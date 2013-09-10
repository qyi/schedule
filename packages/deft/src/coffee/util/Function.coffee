###
Copyright (c) 2012-2013 [DeftJS Framework Contributors](http://deftjs.org)
Open source under the [MIT License](http://en.wikipedia.org/wiki/MIT_License).
###

###*
* A collection of useful static methods for interacting with Functions.
###
Ext.define( 'Deft.util.Function',
	alternateClassName: [ 'Deft.Function' ]
	
	statics:
		###*
		* Returns a new wrapper function that caches the return value for previously processed function argument(s).
		* 
		* @param {Function} fn Function to wrap.
		* @param {Object} scope Optional scope in which to execute the wrapped function.
		* @param {Function} hashFn Optional function used to compute a hash key for storing the result, based on the arguments to the original function.
		* @return {Function} The new wrapper function.
		###
		memoize: ( fn, scope, hashFn ) ->
			memo = {}
			return ( value ) ->
				key = if Ext.isFunction( hashFn ) then hashFn.apply( scope, arguments ) else value
				memo[ key ] = fn.apply( scope, arguments ) unless key of memo
				return memo[ key ]
		
		###*
		* Schedules the specified callback function to be executed on the next turn of the event loop.
		* 
		* @param {Function} fn Callback function.
		* @param {Object} scope Optional scope for the callback.
		###
		nextTick: ( fn, scope ) ->
			if scope?
				fn = Ext.Function.bind( fn, scope )
			setTimeout( fn, 0 )
			return
		
		###*
		* Creates a new wrapper function that spreads the passed Array over the target function arguments.
		* 
		* @param {Function} fn Function to wrap.
		* @param {Object} scope Optional scope in which to execute the wrapped function.
		* @return {Function} The new wrapper function.
		###
		spread: ( fn, scope ) ->
			return ( array ) ->
				if not Ext.isArray( array )
					Ext.Error.raise( msg: "Error spreading passed Array over target function arguments: passed a non-Array." )
				return fn.apply( scope, array )
,
	->
		if setImmediate? 
			@nextTick = ( fn, scope ) ->
				if scope?
					fn = Ext.Function.bind( fn, scope )
				setImmediate( fn )
				return
)