package com.johnlindquist.multiplayer.game.heroes
{
	import com.electrotank.electroserver4.user.User;
	import org.flixel.FlxG;
	/**
	 * @author John Lindquist
     */
    public class MyHero extends Hero
	{
		public function MyHero(user:User)
        {
            super(user, 0, 0);
        }

        override public function update():void
        {
            acceleration.y = 200; 
            drag.x = 500;

            if (FlxG.keys.LEFT)
            {
                velocity.x = -50;
            }
            if (FlxG.keys.RIGHT)
            {
                velocity.x = 50;
            }

            if (FlxG.keys.UP && onFloor)
            {
                velocity.y = -75;
            }
            super.update();
		}
    }
}
