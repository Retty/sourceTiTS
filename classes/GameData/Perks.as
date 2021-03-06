package classes.GameData 
{
	import adobe.utils.ProductManager;
	import classes.Characters.PlayerCharacter;
	import classes.Creature;
	import classes.GameData.PerkData;
	import classes.GLOBAL;
	import classes.kGAMECLASS;
	
	/**
	 * ...
	 * @author Gedan
	 */
	public class Perks 
	{		
		private var _perkList:Vector.<PerkData>;
		
		public function Perks() 
		{
			_perkList = new Vector.<PerkData>();
			
			// Configure the class perk data
			ConfigureClassPerks();
		}
		
		private function ConfigureClassPerks():void
		{
			ConfigureMercenaryPerks();
			ConfigureSmugglerPerks();
			ConfigureEngineerPerks();
		}
		
		private function ConfigureMercenaryPerks():void
		{
			// Level 2 Perks
			var criticalBlows:PerkData = new PerkData();
			criticalBlows.classLimit = GLOBAL.MERCENARY;
			criticalBlows.levelLimit = 2;
			criticalBlows.autoGained = true;
			criticalBlows.perkName = "Critical Blows";
			criticalBlows.perkDescription = "Your strikes and shots gain a 10% chance of inflicting double damage on normal melee and ranged attacks.";
			insertPerkData(criticalBlows);
			
			var bloodthirsty:PerkData = new PerkData();
			bloodthirsty.classLimit = GLOBAL.MERCENARY;
			bloodthirsty.levelLimit = 2;
			bloodthirsty.perkName = "Bloodthirsty";
			bloodthirsty.perkDescription = "Melee attacks restore a few points of energy.";
			insertPerkData(bloodthirsty);
			
			var armorPiercing:PerkData = new PerkData();
			armorPiercing.classLimit = GLOBAL.MERCENARY;
			armorPiercing.levelLimit = 2;
			armorPiercing.perkName = "Armor Piercing";
			armorPiercing.perkDescription = "Ranged attacks ignore the first few points of enemy defense.";
			insertPerkData(armorPiercing);
			
			// Level 3 Perks
			var tough:PerkData = new PerkData();
			tough.classLimit = GLOBAL.MERCENARY;
			tough.levelLimit = 3;
			tough.autoGained = true;
			tough.perkName = "Tough";
			tough.perkDescription = "Vulnerability to piercing, slashing, and kinetic damage taken reduced by 10%.";
			insertPerkData(tough);
			
			var powerStrike:PerkData = new PerkData();
			powerStrike.classLimit = GLOBAL.MERCENARY;
			powerStrike.levelLimit = 3;
			powerStrike.perkName = "Power Strike";
			powerStrike.perkDescription = "Grants the ability to perform a single melee attack for 200% normal damage.";
			insertPerkData(powerStrike);
			
			var rapidFire:PerkData = new PerkData();
			rapidFire.classLimit = GLOBAL.MERCENARY;
			rapidFire.levelLimit = 3;
			rapidFire.perkName = "Rapid Fire";
			rapidFire.perkDescription = "Grants the ability to perform a ranged attack with two extra, reduced-accuracy shots.";
			insertPerkData(rapidFire);
			
			// Level 4
			var juggernaut:PerkData = new PerkData();
			juggernaut.classLimit = GLOBAL.MERCENARY;
			juggernaut.levelLimit = 4;
			juggernaut.autoGained = true;
			juggernaut.perkName = "Juggernaut";
			juggernaut.perkDescription = "Grants a 25% chance to overcome any paralysis or stun effect every combat round.";
			insertPerkData(juggernaut);
			
			var riposte:PerkData = new PerkData();
			riposte.classLimit = GLOBAL.MERCENARY;
			riposte.levelLimit = 4;
			riposte.perkName = "Riposte";
			riposte.perkDescription = "Grants increased evasion after any melee attack made for the remainder of the combat round.";
			insertPerkData(riposte);
			
			var takeCover:PerkData = new PerkData();
			takeCover.classLimit = GLOBAL.MERCENARY;
			takeCover.levelLimit = 4;
			takeCover.perkName = "Take Cover";
			takeCover.perkDescription = "Grants the ability to avoid nearly all incoming ranged attacks for 3 combat rounds.";
			insertPerkData(takeCover);
			
			// Level 5
			var secondWind:PerkData = new PerkData();
			secondWind.classLimit = GLOBAL.MERCENARY;
			secondWind.levelLimit = 5;
			secondWind.autoGained = true;
			secondWind.perkName = "Second Wind";
			secondWind.perkDescription = "Grants the ability to recover half of your maximum HP and Energy once per combat encounter.";
			insertPerkData(secondWind);
			
			var carpetGrenades:PerkData = new PerkData();
			carpetGrenades.classLimit = GLOBAL.MERCENARY;
			carpetGrenades.levelLimit = 5;
			carpetGrenades.perkName = "Carpet Grenades";
			carpetGrenades.perkDescription = "Grants the ability to toss out a handful of micro-grenades, damaging everything in a large area. Hits all enemies.";
			insertPerkData(carpetGrenades);
			
			var detCharge:PerkData = new PerkData();
			detCharge.classLimit = GLOBAL.MERCENARY;
			detCharge.levelLimit = 5;
			detCharge.perkName = "Detonation Charge";
			detCharge.perkDescription = "Grants the ability to throw a focused detonation charge at an enemy for very high thermal damage. Focusing the charge restricts the blast radius to a single target.";
			insertPerkData(detCharge);
		}
		
		private function ConfigureSmugglerPerks():void
		{
			// Level 2
			var lucky:PerkData = new PerkData();
			lucky.classLimit = GLOBAL.SMUGGLER;
			lucky.levelLimit = 2;
			lucky.autoGained = true;
			lucky.perkName = "Lucky Breaks";
			lucky.perkDescription = "Grants you an additional 10% evasion chance.";
			insertPerkData(lucky);
			
			var shootFirst:PerkData = new PerkData();
			shootFirst.classLimit = GLOBAL.SMUGGLER;
			shootFirst.levelLimit = 2;
			shootFirst.perkName = "Shoot First";
			shootFirst.perkDescription = "When using a ranged attack during the first round of combat, gain an additional attack.";
			insertPerkData(shootFirst);
			
			var lowBlow:PerkData = new PerkData();
			lowBlow.classLimit = GLOBAL.SMUGGLER;
			lowBlow.levelLimit = 2;
			lowBlow.perkName = "Low Blow";
			lowBlow.perkDescription = "Grants the ability to perform a melee strike with a high chance of stunning the target.";
			insertPerkData(lowBlow);
			
			// Level 3
			var escapeArtist:PerkData = new PerkData();
			escapeArtist.classLimit = GLOBAL.SMUGGLER;
			escapeArtist.levelLimit = 3;
			escapeArtist.autoGained = true;
			escapeArtist.perkName = "Escape Artist";
			escapeArtist.perkDescription = "Converts the chance to escape from grapples to use your Reflexes stat rather than Physique. Conveys an additional minor chance to escape.";
			insertPerkData(escapeArtist);
			
			var sneakAttack:PerkData = new PerkData();
			sneakAttack.classLimit = GLOBAL.SMUGGLER;
			sneakAttack.levelLimit = 3;
			sneakAttack.perkName = "Sneak Attack";
			sneakAttack.perkDescription = "Grants the ability to perform a melee attack with greatly increased damage against stunned or blinded targets. Additional negative status effects may increase the damage further.";
			insertPerkData(sneakAttack);
			
			var aimedShot:PerkData = new PerkData();
			aimedShot.classLimit = GLOBAL.SMUGGLER;
			aimedShot.levelLimit = 3;
			aimedShot.perkName = "Aimed Shot";
			aimedShot.perkDescription = "Grants the ability to perform a ranged attack with greatly increased damage against stunned or blinded targets. Additional negative status effects may increase the damage further.";
			insertPerkData(aimedShot);
			
			// Level 4
			var agility:PerkData = new PerkData();
			agility.classLimit = GLOBAL.SMUGGLER;
			agility.levelLimit = 4;
			agility.autoGained = true;
			agility.perkName = "Agility";
			agility.perkDescription = "Increases evasion granted via items by 20%, or provides a flat 2% per equipped item, whichever is higher.";
			insertPerkData(agility);
			
			var sfGen:PerkData = new PerkData();
			sfGen.classLimit = GLOBAL.SMUGGLER;
			sfGen.levelLimit = 4;
			sfGen.perkName = "Stealth Field Generator";
			sfGen.perkDescription = "Grants the ability to massively increase evasion chance for two combat rounds.";
			insertPerkData(sfGen);
			
			var disarmS:PerkData = new PerkData();
			disarmS.classLimit = GLOBAL.SMUGGLER;
			disarmS.levelLimit = 4;
			disarmS.perkName = "Disarming Shot";
			disarmS.perkDescription = "Grants the ability to disarm your target, rendering them unable to wield a weapon for four combat rounds.";
			insertPerkData(disarmS);
			
			// Level 5
			var sharpEyes:PerkData = new PerkData();
			sharpEyes.classLimit = GLOBAL.SMUGGLER;
			sharpEyes.levelLimit = 5;
			sharpEyes.autoGained = true;
			sharpEyes.perkName = "Sharp Eyes";
			sharpEyes.perkDescription = "Decreases the time required to recover from blinding effects, reducing their duration by one combat round.";
			insertPerkData(sharpEyes);
			
			var gasGren:PerkData = new PerkData();
			gasGren.classLimit = GLOBAL.SMUGGLER;
			gasGren.levelLimit = 5;
			gasGren.perkName = "Gas Grenade";
			gasGren.perkDescription = "Grants the ability to throw a grenade designed to emit a lust-inducing smog. Deals lust damage to all enemies in combat.";
			insertPerkData(gasGren);
			
			var grenade:PerkData = new PerkData();
			grenade.classLimit = GLOBAL.SMUGGLER;
			grenade.levelLimit = 5;
			grenade.perkName = "Grenade";
			grenade.perkDescription = "Grants the ability to throw a grenade designed to emit high levels of thermal radiation. Deals Thermal damage to all enemies in combat.";
			insertPerkData(grenade);
		}
		
		private function ConfigureEngineerPerks():void
		{
			// Level 2
			var shieldTweaks:PerkData = new PerkData();
			shieldTweaks.classLimit = GLOBAL.ENGINEER;
			shieldTweaks.levelLimit = 2;
			shieldTweaks.autoGained = true;
			shieldTweaks.perkName = "Shield Tweaks";
			shieldTweaks.perkDescription = "Grants your shield generator an additional 2 points of shield protection per level.";
			insertPerkData(shieldTweaks);
			
			var attackDrone:PerkData = new PerkData();
			attackDrone.classLimit = GLOBAL.ENGINEER;
			attackDrone.levelLimit = 2;
			attackDrone.perkName = "Attack Drone";
			attackDrone.perkDescription = "Grants an attack drone that will automatically fire on your enemies every combat round as long as your shields are up. The drone will also supplant your shields with its own, raising your maximum shielding by one point per level.";
			insertPerkData(attackDrone);
			
			var shieldBooster:PerkData = new PerkData();
			shieldBooster.classLimit = GLOBAL.ENGINEER;
			shieldBooster.levelLimit = 2;
			shieldBooster.perkName = "Shield Booster";
			shieldBooster.perkDescription = "Grants a further increase to your shield generator, providing an additional four points of protection per level.";
			insertPerkData(shieldBooster);
			
			// Level 3
			var enhancedDampeners:PerkData = new PerkData();
			enhancedDampeners.classLimit = GLOBAL.ENGINEER;
			enhancedDampeners.levelLimit = 3;
			enhancedDampeners.autoGained = true;
			enhancedDampeners.perkName = "Enhanced Dampeners";
			enhancedDampeners.perkDescription = "Grants a 50% vulnerability reduction to damage absorbed by your shield generator.";
			insertPerkData(enhancedDampeners);
			
			var overcharge:PerkData = new PerkData();
			overcharge.classLimit = GLOBAL.ENGINEER;
			overcharge.levelLimit = 3;
			overcharge.perkName = "Overcharge";
			overcharge.perkDescription = "Grants the ability to perform a single ranged attack for 150% normal damage. If the target's shields have been depleted, the shot may stun the target. Requires an energy weapon.";
			insertPerkData(overcharge);
			
			var volley:PerkData = new PerkData();
			volley.classLimit = GLOBAL.ENGINEER;
			volley.levelLimit = 3;
			volley.perkName = "Volley";
			volley.perkDescription = "Grants the ability to perform an extra ranged attack with reduced accuracy, but a chance of causing blindness regardless. Requires an energy weapon.";
			insertPerkData(volley);
			
			// Level 4
			var armorTweaks:PerkData = new PerkData();
			armorTweaks.classLimit = GLOBAL.ENGINEER;
			armorTweaks.levelLimit = 4;
			armorTweaks.autoGained = true;
			armorTweaks.perkName = "Armor Tweaks";
			armorTweaks.perkDescription = "Grants a 20% bonus to defense values provided by equipped armor.";
			insertPerkData(armorTweaks);
			
			var powerSurge:PerkData = new PerkData();
			powerSurge.classLimit = GLOBAL.ENGINEER;
			powerSurge.levelLimit = 4;
			powerSurge.perkName = "Power Surge";
			powerSurge.perkDescription = "Grants the ability to restore a moderate amount of shielding for 33 energy.";
			insertPerkData(powerSurge);
			
			var deflectorRegen:PerkData = new PerkData();
			deflectorRegen.classLimit = GLOBAL.ENGINEER;
			deflectorRegen.levelLimit = 4;
			deflectorRegen.perkName = "Deflector Regeneration";
			deflectorRegen.perkDescription = "Grants the ability to restore a moderate amount of shielding over four combat rounds for 20 energy.";
			insertPerkData(deflectorRegen);
			
			// Level 5
			var staticBurst:PerkData = new PerkData();
			staticBurst.classLimit = GLOBAL.ENGINEER;
			staticBurst.levelLimit = 5;
			staticBurst.autoGained = true;
			staticBurst.perkName = "Static Burst";
			staticBurst.perkDescription = "Grants the ability to briefly overload your shield emitter. The burst shocks any enemies in close proximity, freeing you from grapples for a small energy cost.";
			insertPerkData(staticBurst);
			
			var gDisrupt:PerkData = new PerkData();
			gDisrupt.classLimit = GLOBAL.ENGINEER;
			gDisrupt.levelLimit = 5;
			gDisrupt.perkName = "Gravidic Disruptor";
			gDisrupt.perkDescription = "Grants the ability to deal Gravidic damage to targetted enemies. There shouldn't be anything out there that's resistant to gravitic damage!";
			insertPerkData(gDisrupt);
			
			var tDisrupt:PerkData = new PerkData();
			tDisrupt.classLimit = GLOBAL.ENGINEER;
			tDisrupt.levelLimit = 5;
			tDisrupt.perkName = "Thermal Disruptor";
			tDisrupt.perkDescription = "Grants the ability to deal Thermal damage to your foes. Deals higher base damage than Gravidic Disruptor, but some enemies may be resistant to Thermal damage.";
			insertPerkData(tDisrupt);
			
		}
		
		public function getPlayerClassPerksList():Vector.<PerkData>
		{
			return _perkList.filter(classFilter);
		}
		
		public function getPerksList():Vector.<PerkData>
		{
			return _perkList.filter(nonClassFilter);
		}
		
		public function getAvailablePerksList():Vector.<PerkData>
		{
			return _perkList.filter(availablePerksFilter);
		}
		
		private function classFilter(item:PerkData, index:int, vector:Vector.<PerkData>):Boolean
		{
			if (item.isClassLimited == true && item.classLimit == (kGAMECLASS.pc as PlayerCharacter).characterClass) return true;
			return false;
		}
		
		private function nonClassFilter(item:PerkData, index:int, vector:Vector.<PerkData>):Boolean
		{
			if (item.isClassLimited == false) return true;
			return false;
		}
		
		private function availablePerksFilter(item:PerkData, index:int, vector:Vector.<PerkData>):Boolean
		{
			if (item.isLevelLimited == false) return true;
			if (item.isLevelLimited == true && item.levelLimit <= (kGAMECLASS.pc as PlayerCharacter).level) return true;
			return false
		}
		
		private function insertPerkData(perkData:PerkData):void
		{
			_perkList.push(perkData);
		}
		
		public function getPerksForLevel(perkData:Vector.<PerkData>, level:int):Vector.<PerkData>
		{
			return perkData.filter(function(item:PerkData, index:int, vector:Vector.<PerkData>):Boolean {
				if ((item as PerkData).autoGained == true) return false;
				if ((item as PerkData).levelLimit == level) return true;
				return false;
			});
		}
		
		public function getAutoPerkForCreature(creature:Creature):PerkData
		{			
			var filterPerk:Vector.<PerkData> = _perkList.filter(function(item:PerkData, index:int, vector:Vector.<PerkData>):Boolean {
				if ((item as PerkData).autoGained == true
					&& (item as PerkData).levelLimit == creature.level
					&& (item as PerkData).isClassLimited == true
					&& (item as PerkData).classLimit == creature.characterClass) return true;
					return false;
			});
			
			if (filterPerk.length > 1) throw new Error("Found more than one potential autoperk, fuck.");
			
			if (filterPerk.length == 1) 
			{
				return filterPerk[0];
			}
			
			return null;
		}
		
		public function getAutoPerksForCreature(creature:Creature):Vector.<PerkData>
		{
			var filterPerks:Vector.<PerkData> = _perkList.filter(function(item:PerkData, index:int, vector:Vector.<PerkData>):Boolean {
				if ((item as PerkData).autoGained == true
					&& (item as PerkData).levelLimit <= creature.level
					&& (item as PerkData).isClassLimited == true
					&& (item as PerkData).classLimit == creature.characterClass) return true;
					return false;
			});
			
			return filterPerks;
		}
	}

}