package options;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.FlxSubState;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxSave;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;
#if android
import android.Hardware;
#end

using StringTools;

class ModSettingsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Mod Settings';
		rpcTitle = 'Mod Settings Menu'; //for Discord Rich Presence

		var option:Option = new Option('Check For Updates',
			'they check if you are on the newest version of the MOD',
			'checkForUpdates',
			'bool',
             true);
		addOption(option);
		
		var option:Option = new Option('Flashing lights (You go from Americanas lol)',
			'turn off the flashing lights of the MOD',
			'flashingLightMod',
			'bool',
             true);
        addOption(option);
        
        var option:Option = new Option('Language:',
			"Put your required language",
			'language',
			'string',
			'English',
			['Engilsh', 'Português - Brasil']);
		addOption(option);


		super();
	}
}