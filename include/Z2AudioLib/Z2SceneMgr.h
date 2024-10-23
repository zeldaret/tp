#ifndef Z2SCENEMGR_H
#define Z2SCENEMGR_H

#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JAudio2/JASGadget.h"

s8 dComIfGp_getReverb(int roomNo);

class Z2SceneMgr : public JASGlobalInstance<Z2SceneMgr> {
public:
    Z2SceneMgr();
    void setInDarkness(bool);
    void setSceneExist(bool);
    void setFadeOutStart(u8);
    void setFadeInStart(u8);
    void setSceneName(char*, s32, s32);
    void sceneChange(JAISoundID, u8, u8, u8, u8, u8, bool);
    void framework();
    void load1stDynamicWave();
    void _load1stWaveInner_1();
    void _load1stWaveInner_2();
    bool check1stDynamicWave();
    void load2ndDynamicWave();
    void sceneBgmStart();
    void loadStaticWaves();
    BOOL checkFirstWaves();
    bool eraseSeWave(u32);
    bool eraseBgmWave(u32);
    s32 getWaveLoadStatus(u32, u32);
    bool loadSeWave(u32);
    bool loadBgmWave(u32);

    bool isSceneExist() const { return sceneExist; }
    int getCurrentSceneNum() const { return sceneNum; }
    s8 getCurrentRoomNum() { return roomNum; }
    bool isInGame() const { return inGame; }
    void setInGame(bool i_inGame) { inGame = i_inGame; }
    bool isInDarkness() const { return inDarkness; }
    s8 getRoomReverb() const { return dComIfGp_getReverb(roomNum); }
    bool isMovieDemo() { return sceneNum == 2 || sceneNum == 8 || sceneNum == 9; }
    s32 getSeLoadStatus(u32 wave) { return getWaveLoadStatus(wave, 0); }
    s32 getBgmLoadStatus(u32 wave) { return getWaveLoadStatus(wave, 1); }

private:
    /* 0x00 */ JAISoundID BGM_ID;
    /* 0x04 */ int sceneNum;
    /* 0x08 */ int timer;
    /* 0x0C */ s8 roomNum;
    /* 0x0D */ u8 requestSeWave_1;
    /* 0x0E */ u8 loadedSeWave_1;
    /* 0x0F */ u8 requestSeWave_2;
    /* 0x10 */ u8 loadedSeWave_2;
    /* 0x11 */ u8 requestBgmWave_1;
    /* 0x12 */ u8 loadedBgmWave_1;
    /* 0x13 */ u8 requestBgmWave_2;
    /* 0x14 */ u8 loadedBgmWave_2;
    /* 0x15 */ u8 requestDemoWave;
    /* 0x16 */ u8 loadedDemoWave;
    /* 0x17 */ s8 load1stWait;
    /* 0x18 */ u8 field_0x18;
    /* 0x19 */ u8 field_0x19;
    /* 0x1A */ bool field_0x1a;
    /* 0x1B */ bool field_0x1b;
    /* 0x1C */ bool inGame;
    /* 0x1D */ bool sceneExist;
    /* 0x1E */ bool inDarkness;
};  // Size = 0x20

inline Z2SceneMgr* Z2GetSceneMgr() {
    return JASGlobalInstance<Z2SceneMgr>::getInstance();
}

enum Spot {  // aka scene
    /* 0x00 */ SPOT_ORDON_RANCH,
    /* 0x01 */ SPOT_ORDON_VILLAGE,
    /* 0x02 */ SPOT_ORDON_INTERIOR,
    /* 0x03 */ SPOT_ORDON_SPRING,
    /* 0x04 */ SPOT_TWILIGHT_HYRULE_CASTLE,
    /* 0x05 */ SPOT_FARON_WOODS,
    /* 0x06 */ SPOT_CORO_SHOP,
    /* 0x07 */ SPOT_SACRED_GROVE,
    /* 0x08 */ SPOT_KAKARIKO_VILLAGE,
    /* 0x09 */ SPOT_KAKARIKO_INTERIOR,
    /* 0x0A */ SPOT_SANCTUARY_BASEMENT,
    /* 0x0B */ SPOT_DEATH_MOUNTAIN,
    /* 0x0C */ SPOT_SUMO_HALL,
    /* 0x0D */ SPOT_KAKARIKO_GRAVEYARD,
    /* 0x0E */ SPOT_HIDDEN_VILLAGE,
    /* 0x0F */ SPOT_IMPAZ_HOUSE,
    /* 0x10 */ SPOT_LAKE_HYLIA,
    /* 0x11 */ SPOT_ZORAS_RIVER,
    /* 0x12 */ SPOT_UPPER_ZORAS_RIVER,
    /* 0x13 */ SPOT_FISHING_POND,
    /* 0x14 */ SPOT_HENA_CABIN,
    /* 0x15 */ SPOT_ZORAS_DOMAIN,
    /* 0x16 */ SPOT_CASTLE_TOWN,
    /* 0x17 */ SPOT_CASTLE_TOWN_INTERIOR,
    /* 0x18 */ SPOT_CASTLE_TOWN_SHOPS,
    /* 0x19 */ SPOT_STAR_TENT,
    /* 0x1A */ SPOT_SNOWPEAK,
    /* 0x1B */ SPOT_ARBITERS_GROUNDS_EXTERIOR,
    /* 0x1C */ SPOT_GERUDO_DESERT,
    /* 0x1D */ SPOT_MIRROR_CHAMBER,
    /* 0x1E */ SPOT_HYRULE_FIELD,
    /* 0x1F */ SPOT_CASTLE_TOWN_GATES,
    /* 0x20 */ SPOT_HYLIA_BRIDGE_BATTLE,
    /* 0x21 */ SPOT_SHADES_REALM,
    /* 0x22 */ SPOT_ELDIN_BRIDGE_BATTLE,
    /* 0x23 */ SPOT_NONE,
    /* 0x24 */ SPOT_LIGHT_SPIRIT_CHAMBER,
    /* 0x25 */ SPOT_CASTLE_THRONE_ROOM,
    /* 0x26 */ SPOT_ENEMY_TEST,
    /* 0x27 */ SPOT_FORTRESS,
    /* 0x28 */ SPOT_FOREST_TEMPLE,
    /* 0x29 */ SPOT_FOREST_TEMPLE_MINIBOSS,
    /* 0x2A */ SPOT_FOREST_TEMPLE_BOSS,
    /* 0x2B */ SPOT_GORON_MINES,
    /* 0x2C */ SPOT_GORON_MINES_MINIBOSS,
    /* 0x2D */ SPOT_GORON_MINES_BOSS,
    /* 0x2E */ SPOT_LAKEBED_TEMPLE,
    /* 0x2F */ SPOT_LAKEBED_TEMPLE_MINIBOSS,
    /* 0x30 */ SPOT_LAKEBED_TEMPLE_BOSS,
    /* 0x31 */ SPOT_ARBITERS_GROUNDS,
    /* 0x32 */ SPOT_ARBITERS_GROUNDS_MINIBOSS,
    /* 0x33 */ SPOT_ARBITERS_GROUNDS_BOSS,
    /* 0x34 */ SPOT_SNOWPEAK_RUINS,
    /* 0x35 */ SPOT_SNOWPEAK_RUINS_MINIBOSS,
    /* 0x36 */ SPOT_SNOWPEAK_RUINS_BOSS,
    /* 0x37 */ SPOT_TEMPLE_OF_TIME,
    /* 0x38 */ SPOT_TEMPLE_OF_TIME_MINIBOSS,
    /* 0x39 */ SPOT_TEMPLE_OF_TIME_BOSS,
    /* 0x3A */ SPOT_CITY_IN_THE_SKY,
    /* 0x3B */ SPOT_CITY_IN_THE_SKY_MINIBOSS,
    /* 0x3C */ SPOT_CITY_IN_THE_SKY_BOSS,
    /* 0x3D */ SPOT_PALACE_OF_TWILIGHT,
    /* 0x3E */ SPOT_PALACE_OF_TWILIGHT_MINIBOSS_A,
    /* 0x3F */ SPOT_PALACE_OF_TWILIGHT_MINIBOSS_B,
    /* 0x40 */ SPOT_PALACE_OF_TWILIGHT_THRONE_ROOM,
    /* 0x41 */ SPOT_PALACE_OF_TWILIGHT_BOSS,
    /* 0x42 */ SPOT_HYRULE_CASTLE,
    /* 0x43 */ SPOT_FINAL_BATTLE_THRONE_ROOM,
    /* 0x44 */ SPOT_FINAL_BATTLE_FIELD,
    /* 0x45 */ SPOT_FINAL_BATTLE_CUTSCENE,
    /* 0x46 */ SPOT_ICE_BLOCK_PUZZLE,
    /* 0x47 */ SPOT_CAVE_OF_ORDEALS,
    /* 0x48 */ SPOT_GORGE_LANTERN_CAVE,
    /* 0x49 */ SPOT_LAKE_LANTERN_CAVE,
    /* 0x4A */ SPOT_ELDIN_MAGNET_CAVE,
    /* 0x4B */ SPOT_GROTTO_GRASS_1,
    /* 0x4C */ SPOT_GROTTO_GRASS_2,
    /* 0x4D */ SPOT_GROTTO_ROCK_1,
    /* 0x4E */ SPOT_GROTTO_ROCK_2,
    /* 0x4F */ SPOT_GROTTO_POND,
    /* 0x50 */ SPOT_FARON_WOODS_CAVE,
};

#endif /* Z2SCENEMGR_H */
