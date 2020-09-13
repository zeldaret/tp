#include "d_save.h"
#pragma peephole on

// temporary externs until they've been defined in their proper header
extern "C" { 
    void dComIfGp_setSelectItem(int);
    void OSReport_Error(void);
    void dSv_event_c_NS_isEventBit(void);
    void dComIfGs_setMixItemIndex(void);
    void dComIfGs_setSelectItemIndex(void);
    void dComIfGs_getMixItemIndex(void);
    char* strcpy(char*,const char*);
    void func_80362224(void);
    void func_803621D8(void);
    void func_8036221C(void);
    void func_803621D0(void);
    void _restgpr_29(void);
    void _savegpr_29(void);
    void _restgpr_28(void);
    void _savegpr_28(void);
    void _restgpr_27(void);
    void _savegpr_27(void);
    unsigned int getSelectItemIndex__21dSv_player_status_a_cCFi(int);
    void setLineUpItem__17dSv_player_item_cFv(void);
    void dMeter2Info_c_NS_setHotSpringTimer(void);
    void setItem__17dSv_player_item_cFiUc(void);
    void dSv_item_rename__FUc(void);
    void setBottleItemIn__17dSv_player_item_cFUcUc(void);
    void getItem__17dSv_player_item_cCFib(void);
    void setEquipBottleItemIn__17dSv_player_item_cFUcUc(u8,u8);
    void dSv_player_get_item_c_NS_isFirstBit(void);
    void dSv_player_item_record_c_NS_setBombNum(void);
    void dSv_player_item_max_c_NS_getBombNum(void);
}
extern float lbl_80451D5C;
extern u8 lbl_80379234[0x64];
extern int lbl_804061C0;
extern float lbl_80451D58;
extern u8 lbl_803A7270[24];
extern u8 lbl_80430188[16];
extern u8 lbl_803A7288;
#define _SDA2_BASE_(dummy) 0

u8 dSv_item_rename(u8 item_id) {
    switch (item_id) {
        case LANTERN_OIL_2: return LANTERN_OIL;
        case RED_POTION_2: return RED_POTION;
        case LANTERN_OIL_3: return LANTERN_OIL_4;
        default: return item_id;
    }
}

void dSv_player_status_a_c::init() {
    max_health = 15;
    current_health = 12;
    current_rupees = 0;
    max_lantern_oil = 0;
    current_lantern_oil = 0;
    unk10 = 0;

    for (int i = 0; i < 4; i++) {
        select_item[i] = NO_ITEM;
        mix_item[i + 1] =  NO_ITEM;
        dComIfGp_setSelectItem(i);
    }

    for (int i = 0; i < 6; i++) {
        equipment[i] = 0;
    }

    equipment[0] = ORDON_CLOTHES;
    equipment[1] = NO_ITEM;
    equipment[2] = NO_ITEM;
    equipment[3] = NO_ITEM;
    equipment[4] = NO_ITEM;
    current_wallet = WALLET;
    unk26 = 0;
    unk27 = 0;
    magic_flag = 0;
    unk29 = 0;
    unk30 = 0;

    for (int i = 0; i < 3; i++) {
        unk31[i] = 0;
    }
}

void dSv_player_status_a_c::setSelectItemIndex(signed int select_item_index, u8 item_index) {
    if (select_item_index >= 4) {
        return;
    }
    select_item[select_item_index] = item_index;
}

u8 dSv_player_status_a_c::getSelectItemIndex(signed int select_item_index) const {
  if (select_item_index < 4) {
    return select_item[select_item_index];
  }
  return 0;
}

void dSv_player_status_a_c::setMixItemIndex(signed int mix_item_index, u8 item_index) {
    if (mix_item_index >= 4) {
        return;
    }
    mix_item[mix_item_index+1] = item_index;
}

u8 dSv_player_status_a_c::getMixItemIndex(signed int mix_item_index) const {
  if (mix_item_index < 4) {
    return mix_item[mix_item_index+1];
  }
  return 0;
}

u16 dSv_player_status_a_c::getRupeeMax(void) const {
    if(current_wallet < 3) { // if you make this a default, it wont match. Compiler, pls.
        switch(current_wallet) {
            case WALLET: return 300;
            case BIG_WALLET: return 600;
            case GIANT_WALLET: return 1000;
        }
    }
    return 0;
}

asm bool dSv_player_status_a_c::isMagicFlag(u8) const {
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    clrlwi. r4, r4, 0x18
    bne lbl_80032B24
    lis r3, lbl_804061C0@ha
    addi r3, r3, lbl_804061C0@l
    addi r3, r3, 0x7f0
    li r4, 0x2304
    bl dSv_event_c_NS_isEventBit
    b lbl_80032B40
lbl_80032B24:
    lbz r3, 0x1c(r3)
    li r0, 1
    slw r0, r0, r4
    clrlwi r0, r0, 0x18
    and r3, r3, r0
    addic r0, r3, -1
    subfe r3, r0, r3
lbl_80032B40:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

void dSv_player_status_b_c::init() {
  
  unk4 = 0;
  unk0 = 0;
  transform_level_flag = 0;
  dark_clear_level_flag = 0;
  unk10 = 0;
  unk12 = lbl_80451D58;
  unk16 = 0;

  for (int i = 0; i < 3; i++) {
      unk18[i] = 0;
  }
}

void dSv_player_status_b_c::onDarkClearLV(int flagOnOff) {

  dark_clear_level_flag = dark_clear_level_flag | (u8)(1 << flagOnOff);
}

asm bool dSv_player_status_b_c::isDarkClearLV(int unk) const {
    nofralloc
    lbz r3, 9(r3)
    li r0, 1
    slw r0, r0, r4
    clrlwi r0, r0, 0x18
    and r3, r3, r0
    addic r0, r3, -1
    subfe r3, r0, r3
    blr 
}

void dSv_player_status_b_c::onTransformLV(int flagOnOff) {
    transform_level_flag = transform_level_flag | (u8)(1 << flagOnOff);
}

asm bool dSv_player_status_b_c::isTransformLV(int unk) const {
nofralloc
lbz r3, 8(r3)
li r0, 1
slw r0, r0, r4
clrlwi r0, r0, 0x18
and r3, r3, r0
addic r0, r3, -1
subfe r3, r0, r3
blr 
}

void dSv_horse_place_c::init(void) {
    float position_val;
    char* default_stage;

    default_stage = strcpy((char*)current_stage, (char*)lbl_80379234);
    position_val = lbl_80451D5C;
    position.x = lbl_80451D5C;
    position.y = position_val;
    position.z = position_val;
    angle = 0;
    spawn_id = 0;
    room_id = 0;
}

void dSv_horse_place_c::set(const char* i_stage, const cXyz& i_position, short i_angle, signed char i_room_id) {
  strcpy((char*)current_stage,i_stage);
  position.x = i_position.x;
  position.y = i_position.y;
  position.z = i_position.z;
  angle = i_angle;
  room_id = i_room_id;
}

asm void dSv_player_return_place_c::init(void) {
nofralloc
stwu r1, -0x10(r1)
mflr r0
stw r0, 0x14(r1)
stw r31, 0xc(r1)
mr r31, r3
lis r4, lbl_80379234@ha
addi r4, r4, lbl_80379234@l
addi r4, r4, 1
bl strcpy
li r0, 1
stb r0, 9(r31)
li r3, 0
stb r3, 8(r31)
li r0, 0x15
stb r0, 0xa(r31)
stb r3, 0xb(r31)
lwz r31, 0xc(r1)
lwz r0, 0x14(r1)
mtlr r0
addi r1, r1, 0x10
blr 
stwu r1, -0x20(r1)
mflr r0
stw r0, 0x24(r1)
addi r11, r1, 0x20
bl _savegpr_29
mr r29, r3
mr r30, r5
mr r31, r6
bl strcpy
stb r30, 9(r29)
stb r31, 8(r29)
addi r11, r1, 0x20
bl _restgpr_29
lwz r0, 0x24(r1)
mtlr r0
addi r1, r1, 0x20
blr
}

void dSv_player_field_last_stay_info_c::init() {
    float position_val;

    strcpy((char*)last_stage, (char*)lbl_80379234);
    position_val = lbl_80451D5C;

    last_position.x = lbl_80451D5C;
    last_position.y = position_val;
    last_position.z = position_val;
    last_angle = 0;
    last_spawn_id = 0;
    last_room_id = 1;
    unk24 = 0;
    last_region = 0;

    for (int i = 0; i < 2; i++) {
        unk26[i] = 0;
    }
}

void dSv_player_field_last_stay_info_c::set(const char* i_last_stage_name, const cXyz& i_last_position, short i_last_angle, signed char i_last_spawn_id, u8 i_last_room_id) {
    strcpy((char*)last_stage, i_last_stage_name);

    last_position.x = i_last_position.x;
    last_position.y = i_last_position.y;
    last_position.z = i_last_position.z;
    last_angle = i_last_angle;
    last_spawn_id = i_last_spawn_id;
    last_room_id = i_last_room_id;
}

void dSv_player_field_last_stay_info_c::onRegionBit(int i_region_bit) {
    if (i_region_bit < 0) {
        return;
    }
    if (8 <= i_region_bit) {
        return;
    }
    last_region = last_region | (u8)(1 << i_region_bit);
}

asm bool dSv_player_field_last_stay_info_c::isRegionBit(int unk) const {
nofralloc
cmpwi r4, 0
blt lbl_80032EA8
cmpwi r4, 8
bge lbl_80032EA8
lbz r3, 0x19(r3)
li r0, 1
slw r0, r0, r4
clrlwi r0, r0, 0x18
and r3, r3, r0
addic r0, r3, -1
subfe r3, r0, r3
blr 
lbl_80032EA8:
li r3, 0
blr 
}

void dSv_player_last_mark_info_c::init(void) {
  float position;
  
  strcpy((char*)ooccoo_stage,(char*)lbl_80379234);
  position = lbl_80451D5C;
  ooccoo_position.x = lbl_80451D5C;
  ooccoo_position.y = position;
  ooccoo_position.z = position;
  ooccoo_angle = 0;
  ooccoo_room_id = 0;
  ooccoo_spawn_id = 0;
  unk24 = -1;
 
  for (int i = 0; i < 3; i++) {
    unk25[i] = 0;
  }
}

void dSv_player_last_mark_info_c::setWarpItemData(const char* i_ooccoo_stage, const cXyz& i_ooccoo_position, short i_ooccoo_angle, s8 i_ooccoo_room_id, u8 unk1, u8 unk2) {
  strcpy((char*)ooccoo_stage,i_ooccoo_stage);
  ooccoo_position.x = i_ooccoo_position.x;
  ooccoo_position.y = i_ooccoo_position.y;
  ooccoo_position.z = i_ooccoo_position.z;
  ooccoo_angle = i_ooccoo_angle;
  ooccoo_room_id = i_ooccoo_room_id;
}

void dSv_player_item_c::init(void) {
  for (int i = 0; i < 24; i++) {
    items[i] = NO_ITEM;
    item_slots[i] = NO_ITEM;
  }
}

asm void dSv_player_item_c::setItem(int current_items_index, u8 new_items_index) {
nofralloc
stwu r1, -0x20(r1)
mflr r0
stw r0, 0x24(r1)
addi r11, r1, 0x20
bl _savegpr_29
mr r29, r4
cmpwi r29, 0x18
bge lbl_80032FE0
stbx r5, r3, r29
bl setLineUpItem__17dSv_player_item_cFv
lbl_80032FE0:
li r30, 0
lis r3, lbl_804061C0@ha
addi r31, r3, lbl_804061C0@l
lbl_80032FEC:
mr r3, r31
mr r4, r30
bl getSelectItemIndex__21dSv_player_status_a_cCFi
clrlwi r0, r3, 0x18
cmpw r29, r0
bne lbl_8003300C
mr r3, r30
bl dComIfGp_setSelectItem
lbl_8003300C:
addi r30, r30, 1
cmpwi r30, 3
blt lbl_80032FEC
addi r11, r1, 0x20
bl _restgpr_29
lwz r0, 0x24(r1)
mtlr r0
addi r1, r1, 0x20
blr
}

asm u8 dSv_player_item_c::getItem(int, bool) const {
nofralloc
/* 80033030 0002FF70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80033034 0002FF74  7C 08 02 A6 */	mflr r0
/* 80033038 0002FF78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003303C 0002FF7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80033040 0002FF80  48 32 F1 91 */	bl func_803621D0
/* 80033044 0002FF84  7C 7A 1B 78 */	mr r26, r3
/* 80033048 0002FF88  7C 9B 23 78 */	mr r27, r4
/* 8003304C 0002FF8C  2C 1B 00 18 */	cmpwi r27, 0x18
/* 80033050 0002FF90  40 80 02 8C */	bge lbl_800332DC
/* 80033054 0002FF94  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80033058 0002FF98  41 82 02 7C */	beq lbl_800332D4
/* 8003305C 0002FF9C  3B C0 00 00 */	li r30, 0
/* 80033060 0002FFA0  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80033064 0002FFA4  3B E3 61 C0 */	addi r31, r3, lbl_804061C0@l
lbl_80033068:
/* 80033068 0002FFA8  7F E3 FB 78 */	mr r3, r31
/* 8003306C 0002FFAC  7F C4 F3 78 */	mr r4, r30
/* 80033070 0002FFB0  4B FF F9 ED */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 80033074 0002FFB4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80033078 0002FFB8  7C 1B 00 00 */	cmpw r27, r0
/* 8003307C 0002FFBC  41 82 00 18 */	beq lbl_80033094
/* 80033080 0002FFC0  7F C3 F3 78 */	mr r3, r30
/* 80033084 0002FFC4  4B FF AD 45 */	bl dComIfGs_getMixItemIndex
/* 80033088 0002FFC8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8003308C 0002FFCC  7C 1B 00 00 */	cmpw r27, r0
/* 80033090 0002FFD0  40 82 02 38 */	bne lbl_800332C8
lbl_80033094:
/* 80033094 0002FFD4  7F C3 F3 78 */	mr r3, r30
/* 80033098 0002FFD8  4B FF AD 31 */	bl dComIfGs_getMixItemIndex
/* 8003309C 0002FFDC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800330A0 0002FFE0  28 00 00 FF */	cmplwi r0, 0xff
/* 800330A4 0002FFE4  41 82 02 24 */	beq lbl_800332C8
/* 800330A8 0002FFE8  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 800330AC 0002FFEC  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 800330B0 0002FFF0  7F C4 F3 78 */	mr r4, r30
/* 800330B4 0002FFF4  4B FF F9 A9 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 800330B8 0002FFF8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800330BC 0002FFFC  7F BA 00 AE */	lbzx r29, r26, r0
/* 800330C0 00030000  7F C3 F3 78 */	mr r3, r30
/* 800330C4 00030004  4B FF AD 05 */	bl dComIfGs_getMixItemIndex
/* 800330C8 00030008  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800330CC 0003000C  7C 7A 00 AE */	lbzx r3, r26, r0
/* 800330D0 00030010  7C 7C 1B 78 */	mr r28, r3
/* 800330D4 00030014  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800330D8 00030018  28 00 00 43 */	cmplwi r0, 0x43
/* 800330DC 0003001C  40 82 00 10 */	bne lbl_800330EC
/* 800330E0 00030020  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800330E4 00030024  28 00 00 70 */	cmplwi r0, 0x70
/* 800330E8 00030028  41 82 00 1C */	beq lbl_80033104
lbl_800330EC:
/* 800330EC 0003002C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 800330F0 00030030  28 00 00 43 */	cmplwi r0, 0x43
/* 800330F4 00030034  40 82 00 18 */	bne lbl_8003310C
/* 800330F8 00030038  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800330FC 0003003C  28 00 00 70 */	cmplwi r0, 0x70
/* 80033100 00030040  40 82 00 0C */	bne lbl_8003310C
lbl_80033104:
/* 80033104 00030044  38 60 00 59 */	li r3, 0x59
/* 80033108 00030048  48 00 01 D8 */	b lbl_800332E0
lbl_8003310C:
/* 8003310C 0003004C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80033110 00030050  28 00 00 43 */	cmplwi r0, 0x43
/* 80033114 00030054  40 82 00 10 */	bne lbl_80033124
/* 80033118 00030058  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8003311C 0003005C  28 00 00 71 */	cmplwi r0, 0x71
/* 80033120 00030060  41 82 00 1C */	beq lbl_8003313C
lbl_80033124:
/* 80033124 00030064  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80033128 00030068  28 00 00 43 */	cmplwi r0, 0x43
/* 8003312C 0003006C  40 82 00 18 */	bne lbl_80033144
/* 80033130 00030070  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80033134 00030074  28 00 00 71 */	cmplwi r0, 0x71
/* 80033138 00030078  40 82 00 0C */	bne lbl_80033144
lbl_8003313C:
/* 8003313C 0003007C  38 60 00 59 */	li r3, 0x59
/* 80033140 00030080  48 00 01 A0 */	b lbl_800332E0
lbl_80033144:
/* 80033144 00030084  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80033148 00030088  28 00 00 43 */	cmplwi r0, 0x43
/* 8003314C 0003008C  40 82 00 10 */	bne lbl_8003315C
/* 80033150 00030090  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80033154 00030094  28 00 00 72 */	cmplwi r0, 0x72
/* 80033158 00030098  41 82 00 1C */	beq lbl_80033174
lbl_8003315C:
/* 8003315C 0003009C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80033160 000300A0  28 00 00 43 */	cmplwi r0, 0x43
/* 80033164 000300A4  40 82 00 18 */	bne lbl_8003317C
/* 80033168 000300A8  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8003316C 000300AC  28 00 00 72 */	cmplwi r0, 0x72
/* 80033170 000300B0  40 82 00 0C */	bne lbl_8003317C
lbl_80033174:
/* 80033174 000300B4  38 60 00 59 */	li r3, 0x59
/* 80033178 000300B8  48 00 01 68 */	b lbl_800332E0
lbl_8003317C:
/* 8003317C 000300BC  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80033180 000300C0  28 00 00 43 */	cmplwi r0, 0x43
/* 80033184 000300C4  40 82 00 10 */	bne lbl_80033194
/* 80033188 000300C8  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8003318C 000300CC  28 00 00 3E */	cmplwi r0, 0x3e
/* 80033190 000300D0  41 82 00 1C */	beq lbl_800331AC
lbl_80033194:
/* 80033194 000300D4  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80033198 000300D8  28 00 00 43 */	cmplwi r0, 0x43
/* 8003319C 000300DC  40 82 00 18 */	bne lbl_800331B4
/* 800331A0 000300E0  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800331A4 000300E4  28 00 00 3E */	cmplwi r0, 0x3e
/* 800331A8 000300E8  40 82 00 0C */	bne lbl_800331B4
lbl_800331AC:
/* 800331AC 000300EC  38 60 00 5A */	li r3, 0x5a
/* 800331B0 000300F0  48 00 01 30 */	b lbl_800332E0
lbl_800331B4:
/* 800331B4 000300F4  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800331B8 000300F8  28 00 00 4A */	cmplwi r0, 0x4a
/* 800331BC 000300FC  40 82 00 10 */	bne lbl_800331CC
/* 800331C0 00030100  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 800331C4 00030104  28 00 00 76 */	cmplwi r0, 0x76
/* 800331C8 00030108  41 82 00 1C */	beq lbl_800331E4
lbl_800331CC:
/* 800331CC 0003010C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 800331D0 00030110  28 00 00 4A */	cmplwi r0, 0x4a
/* 800331D4 00030114  40 82 00 18 */	bne lbl_800331EC
/* 800331D8 00030118  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800331DC 0003011C  28 00 00 76 */	cmplwi r0, 0x76
/* 800331E0 00030120  40 82 00 0C */	bne lbl_800331EC
lbl_800331E4:
/* 800331E4 00030124  38 60 00 5B */	li r3, 0x5b
/* 800331E8 00030128  48 00 00 F8 */	b lbl_800332E0
lbl_800331EC:
/* 800331EC 0003012C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800331F0 00030130  28 00 00 4A */	cmplwi r0, 0x4a
/* 800331F4 00030134  40 82 00 10 */	bne lbl_80033204
/* 800331F8 00030138  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 800331FC 0003013C  28 00 00 3D */	cmplwi r0, 0x3d
/* 80033200 00030140  41 82 00 1C */	beq lbl_8003321C
lbl_80033204:
/* 80033204 00030144  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80033208 00030148  28 00 00 4A */	cmplwi r0, 0x4a
/* 8003320C 0003014C  40 82 00 18 */	bne lbl_80033224
/* 80033210 00030150  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80033214 00030154  28 00 00 3D */	cmplwi r0, 0x3d
/* 80033218 00030158  40 82 00 0C */	bne lbl_80033224
lbl_8003321C:
/* 8003321C 0003015C  38 60 00 5C */	li r3, 0x5c
/* 80033220 00030160  48 00 00 C0 */	b lbl_800332E0
lbl_80033224:
/* 80033224 00030164  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80033228 00030168  28 00 00 4A */	cmplwi r0, 0x4a
/* 8003322C 0003016C  40 82 00 10 */	bne lbl_8003323C
/* 80033230 00030170  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80033234 00030174  28 00 00 74 */	cmplwi r0, 0x74
/* 80033238 00030178  41 82 00 1C */	beq lbl_80033254
lbl_8003323C:
/* 8003323C 0003017C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80033240 00030180  28 00 00 4A */	cmplwi r0, 0x4a
/* 80033244 00030184  40 82 00 18 */	bne lbl_8003325C
/* 80033248 00030188  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8003324C 0003018C  28 00 00 74 */	cmplwi r0, 0x74
/* 80033250 00030190  40 82 00 0C */	bne lbl_8003325C
lbl_80033254:
/* 80033254 00030194  38 60 00 5D */	li r3, 0x5d
/* 80033258 00030198  48 00 00 88 */	b lbl_800332E0
lbl_8003325C:
/* 8003325C 0003019C  2C 1E 00 03 */	cmpwi r30, 3
/* 80033260 000301A0  40 82 00 4C */	bne lbl_800332AC
/* 80033264 000301A4  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80033268 000301A8  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 8003326C 000301AC  7F C4 F3 78 */	mr r4, r30
/* 80033270 000301B0  4B FF F7 ED */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 80033274 000301B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80033278 000301B8  40 82 00 34 */	bne lbl_800332AC
/* 8003327C 000301BC  7F C3 F3 78 */	mr r3, r30
/* 80033280 000301C0  4B FF AB 49 */	bl dComIfGs_getMixItemIndex
/* 80033284 000301C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80033288 000301C8  40 82 00 24 */	bne lbl_800332AC
/* 8003328C 000301CC  7F C3 F3 78 */	mr r3, r30
/* 80033290 000301D0  38 80 00 FF */	li r4, 0xff
/* 80033294 000301D4  4B FF AA 31 */	bl dComIfGs_setSelectItemIndex
/* 80033298 000301D8  7F C3 F3 78 */	mr r3, r30
/* 8003329C 000301DC  38 80 00 FF */	li r4, 0xff
/* 800332A0 000301E0  4B FF AA 69 */	bl dComIfGs_setMixItemIndex
/* 800332A4 000301E4  38 60 00 FF */	li r3, 0xff
/* 800332A8 000301E8  48 00 00 38 */	b lbl_800332E0
lbl_800332AC:
/* 800332AC 000301EC  3C 60 80 38 */	lis r3, lbl_80379234@ha
/* 800332B0 000301F0  38 63 92 34 */	addi r3, r3, lbl_80379234@l
/* 800332B4 000301F4  38 63 00 09 */	addi r3, r3, 9
/* 800332B8 000301F8  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 800332BC 000301FC  57 85 06 3E */	clrlwi r5, r28, 0x18
/* 800332C0 00030200  4C C6 31 82 */	crclr 6
/* 800332C4 00030204  4B FD 39 49 */	bl OSReport_Error
lbl_800332C8:
/* 800332C8 00030208  3B DE 00 01 */	addi r30, r30, 1
/* 800332CC 0003020C  2C 1E 00 02 */	cmpwi r30, 2
/* 800332D0 00030210  41 80 FD 98 */	blt lbl_80033068
lbl_800332D4:
/* 800332D4 00030214  7C 7A D8 AE */	lbzx r3, r26, r27
/* 800332D8 00030218  48 00 00 08 */	b lbl_800332E0
lbl_800332DC:
/* 800332DC 0003021C  38 60 00 FF */	li r3, 0xff
lbl_800332E0:
/* 800332E0 00030220  39 61 00 20 */	addi r11, r1, 0x20
/* 800332E4 00030224  48 32 EF 39 */	bl func_8036221C
/* 800332E8 00030228  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800332EC 0003022C  7C 08 03 A6 */	mtlr r0
/* 800332F0 00030230  38 21 00 20 */	addi r1, r1, 0x20
/* 800332F4 00030234  4E 80 00 20 */	blr
}

// void dSv_player_item_c::setLineUpItem(void) {
//     u8* i_item_lst;

//     for (int i = 0; i < 24; i++) {
//         item_slots[i] = 0xFF;
//     }

//     i_item_lst = lbl_803A7270;

//     for (int i = 0; i < 23; i++) {
//         if (items[*i_item_lst] != 0xFF) {
//             item_slots[i] = *i_item_lst;
//         }
//         i_item_lst++;
//     }
// }

asm void dSv_player_item_c::setLineUpItem(void) {
    nofralloc
    /* 800332F8 00030238  38 A0 00 00 */	li r5, 0
/* 800332FC 0003023C  38 C0 00 00 */	li r6, 0
/* 80033300 00030240  38 80 00 FF */	li r4, 0xff
/* 80033304 00030244  38 00 00 18 */	li r0, 0x18
/* 80033308 00030248  7C 09 03 A6 */	mtctr r0
lbl_8003330C:
/* 8003330C 0003024C  38 06 00 18 */	addi r0, r6, 0x18
/* 80033310 00030250  7C 83 01 AE */	stbx r4, r3, r0
/* 80033314 00030254  38 C6 00 01 */	addi r6, r6, 1
/* 80033318 00030258  42 00 FF F4 */	bdnz lbl_8003330C
/* 8003331C 0003025C  3C 80 80 3A */	lis r4, lbl_803A7270@ha
/* 80033320 00030260  38 84 72 70 */	addi r4, r4, lbl_803A7270@l
/* 80033324 00030264  38 00 00 17 */	li r0, 0x17
/* 80033328 00030268  7C 09 03 A6 */	mtctr r0
lbl_8003332C:
/* 8003332C 0003026C  88 C4 00 00 */	lbz r6, 0(r4)
/* 80033330 00030270  7C 03 30 AE */	lbzx r0, r3, r6
/* 80033334 00030274  28 00 00 FF */	cmplwi r0, 0xff
/* 80033338 00030278  41 82 00 10 */	beq lbl_80033348
/* 8003333C 0003027C  38 05 00 18 */	addi r0, r5, 0x18
/* 80033340 00030280  7C C3 01 AE */	stbx r6, r3, r0
/* 80033344 00030284  38 A5 00 01 */	addi r5, r5, 1
lbl_80033348:
/* 80033348 00030288  38 84 00 01 */	addi r4, r4, 1
/* 8003334C 0003028C  42 00 FF E0 */	bdnz lbl_8003332C
/* 80033350 00030290  4E 80 00 20 */	blr 
}

u8 dSv_player_item_c::getLineUpItem(int slot_number) const {
    if (slot_number < MAX_ITEM_SLOTS) {
        return item_slots[slot_number];
    }
    return NO_ITEM;
}

// void dSv_player_item_c::setBottleItemIn(u8 i_item_id_1, u8 i_item_id_2){
//     u8 current_item_index;
//     u8 new_item_index;

//     current_item_index = dSv_item_rename(i_item_id_1);
//     new_item_index = dSv_item_rename(i_item_id_2);
    
//     for (int i = 0; i < 4; i++) {
//         // sanitize input to make sure it's only a bottle
//         if (current_item_index == items[i+11]) {
//             setItem(i+11,new_item_index);
//             // if hotsprings water, turn on the timer
//             if (new_item_index == 107) {
//                 setHotSpringTimer(i+11);
//             }
//             for (int j = 0; j < 4; j++) {
//                 j = getSelectItemIndex(i);
//                 if (i+11 == j) {
//                     dComIfGp_setSelectItem(j);
//                 }
//             }
//         }
//     }
// }

asm void dSv_player_item_c::setBottleItemIn(u8, u8){
    nofralloc
    /* 80033370 000302B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80033374 000302B4  7C 08 02 A6 */	mflr r0
/* 80033378 000302B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003337C 000302BC  39 61 00 20 */	addi r11, r1, 0x20
/* 80033380 000302C0  48 32 EE 59 */	bl _savegpr_28
/* 80033384 000302C4  7C 7C 1B 78 */	mr r28, r3
/* 80033388 000302C8  7C BD 2B 78 */	mr r29, r5
/* 8003338C 000302CC  7C 83 23 78 */	mr r3, r4
/* 80033390 000302D0  4B FF F5 89 */	bl dSv_item_rename__FUc
/* 80033394 000302D4  7C 7E 1B 78 */	mr r30, r3
/* 80033398 000302D8  7F A3 EB 78 */	mr r3, r29
/* 8003339C 000302DC  4B FF F5 7D */	bl dSv_item_rename__FUc
/* 800333A0 000302E0  7C 7D 1B 78 */	mr r29, r3
/* 800333A4 000302E4  3B E0 00 00 */	li r31, 0
/* 800333A8 000302E8  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 800333AC 000302EC  38 00 00 04 */	li r0, 4
/* 800333B0 000302F0  7C 09 03 A6 */	mtctr r0
lbl_800333B4:
/* 800333B4 000302F4  38 9F 00 0B */	addi r4, r31, 0xb
/* 800333B8 000302F8  7C 1C 20 AE */	lbzx r0, r28, r4
/* 800333BC 000302FC  7C 03 00 40 */	cmplw r3, r0
/* 800333C0 00030300  40 82 00 70 */	bne lbl_80033430
/* 800333C4 00030304  7F 83 E3 78 */	mr r3, r28
/* 800333C8 00030308  7F A5 EB 78 */	mr r5, r29
/* 800333CC 0003030C  4B FF FB ED */	bl setItem__17dSv_player_item_cFiUc
/* 800333D0 00030310  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800333D4 00030314  28 00 00 6B */	cmplwi r0, 0x6b
/* 800333D8 00030318  40 82 00 18 */	bne lbl_800333F0
/* 800333DC 0003031C  3C 60 80 43 */	lis r3, lbl_80430188@ha
/* 800333E0 00030320  38 63 01 88 */	addi r3, r3, lbl_80430188@l
/* 800333E4 00030324  38 1F 00 0B */	addi r0, r31, 0xb
/* 800333E8 00030328  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 800333EC 0003032C  48 1E A8 D9 */	bl dMeter2Info_c_NS_setHotSpringTimer
lbl_800333F0:
/* 800333F0 00030330  3B A0 00 00 */	li r29, 0
/* 800333F4 00030334  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 800333F8 00030338  3B C3 61 C0 */	addi r30, r3, lbl_804061C0@l
/* 800333FC 0003033C  3B FF 00 0B */	addi r31, r31, 0xb
lbl_80033400:
/* 80033400 00030340  7F C3 F3 78 */	mr r3, r30
/* 80033404 00030344  7F A4 EB 78 */	mr r4, r29
/* 80033408 00030348  4B FF F6 55 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8003340C 0003034C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80033410 00030350  7C 1F 00 00 */	cmpw r31, r0
/* 80033414 00030354  40 82 00 0C */	bne lbl_80033420
/* 80033418 00030358  7F A3 EB 78 */	mr r3, r29
/* 8003341C 0003035C  4B FF A9 D9 */	bl dComIfGp_setSelectItem
lbl_80033420:
/* 80033420 00030360  3B BD 00 01 */	addi r29, r29, 1
/* 80033424 00030364  2C 1D 00 03 */	cmpwi r29, 3
/* 80033428 00030368  41 80 FF D8 */	blt lbl_80033400
/* 8003342C 0003036C  48 00 00 0C */	b lbl_80033438
lbl_80033430:
/* 80033430 00030370  3B FF 00 01 */	addi r31, r31, 1
/* 80033434 00030374  42 00 FF 80 */	bdnz lbl_800333B4
lbl_80033438:
/* 80033438 00030378  39 61 00 20 */	addi r11, r1, 0x20
/* 8003343C 0003037C  48 32 ED E9 */	bl _restgpr_28
/* 80033440 00030380  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80033444 00030384  7C 08 03 A6 */	mtlr r0
/* 80033448 00030388  38 21 00 20 */	addi r1, r1, 0x20
/* 8003344C 0003038C  4E 80 00 20 */	blr 
}

// this is 1 instruction off
// void dSv_player_item_c::setEmptyBottleItemIn(u8 i_item_id){
//     u8 item_id;
    
//     item_id = dSv_item_rename(i_item_id);
//     setBottleItemIn(EMPTY_BOTTLE,item_id);
// }

asm void dSv_player_item_c::setEmptyBottleItemIn(u8){
    nofralloc
    /* 80033450 00030390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033454 00030394  7C 08 02 A6 */	mflr r0
/* 80033458 00030398  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003345C 0003039C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80033460 000303A0  7C 7F 1B 78 */	mr r31, r3
/* 80033464 000303A4  7C 85 23 78 */	mr r5, r4
/* 80033468 000303A8  7C A3 2B 78 */	mr r3, r5
/* 8003346C 000303AC  4B FF F4 AD */	bl dSv_item_rename__FUc
/* 80033470 000303B0  7C 65 1B 78 */	mr r5, r3
/* 80033474 000303B4  7F E3 FB 78 */	mr r3, r31
/* 80033478 000303B8  38 80 00 60 */	li r4, 0x60
/* 8003347C 000303BC  4B FF FE F5 */	bl setBottleItemIn__17dSv_player_item_cFUcUc
/* 80033480 000303C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80033484 000303C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033488 000303C8  7C 08 03 A6 */	mtlr r0
/* 8003348C 000303CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80033490 000303D0  4E 80 00 20 */	blr 
}

asm void dSv_player_item_c::setEmptyBottle(void) {
    nofralloc
    /* 80033494 000303D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80033498 000303D8  7C 08 02 A6 */	mflr r0
/* 8003349C 000303DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800334A0 000303E0  39 61 00 20 */	addi r11, r1, 0x20
/* 800334A4 000303E4  48 32 ED 39 */	bl _savegpr_29
/* 800334A8 000303E8  3B A0 00 00 */	li r29, 0
/* 800334AC 000303EC  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 800334B0 000303F0  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 800334B4 000303F4  3B E3 00 9C */	addi r31, r3, 0x9c
lbl_800334B8:
/* 800334B8 000303F8  7F E3 FB 78 */	mr r3, r31
/* 800334BC 000303FC  38 1D 00 0B */	addi r0, r29, 0xb
/* 800334C0 00030400  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 800334C4 00030404  7F C4 F3 78 */	mr r4, r30
/* 800334C8 00030408  38 A0 00 01 */	li r5, 1
/* 800334CC 0003040C  4B FF FB 65 */	bl getItem__17dSv_player_item_cCFib
/* 800334D0 00030410  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800334D4 00030414  28 00 00 FF */	cmplwi r0, 0xff
/* 800334D8 00030418  40 82 00 18 */	bne lbl_800334F0
/* 800334DC 0003041C  7F E3 FB 78 */	mr r3, r31
/* 800334E0 00030420  7F C4 F3 78 */	mr r4, r30
/* 800334E4 00030424  38 A0 00 60 */	li r5, 0x60
/* 800334E8 00030428  4B FF FA D1 */	bl setItem__17dSv_player_item_cFiUc
/* 800334EC 0003042C  48 00 00 10 */	b lbl_800334FC
lbl_800334F0:
/* 800334F0 00030430  3B BD 00 01 */	addi r29, r29, 1
/* 800334F4 00030434  2C 1D 00 04 */	cmpwi r29, 4
/* 800334F8 00030438  41 80 FF C0 */	blt lbl_800334B8
lbl_800334FC:
/* 800334FC 0003043C  39 61 00 20 */	addi r11, r1, 0x20
/* 80033500 00030440  48 32 ED 29 */	bl _restgpr_29
/* 80033504 00030444  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80033508 00030448  7C 08 03 A6 */	mtlr r0
/* 8003350C 0003044C  38 21 00 20 */	addi r1, r1, 0x20
/* 80033510 00030450  4E 80 00 20 */	blr 
}

asm void dSv_player_item_c::setEmptyBottle(u8){
    nofralloc
    /* 80033514 00030454  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80033518 00030458  7C 08 02 A6 */	mflr r0
/* 8003351C 0003045C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80033520 00030460  39 61 00 20 */	addi r11, r1, 0x20
/* 80033524 00030464  48 32 EC B5 */	bl _savegpr_28
/* 80033528 00030468  7C 9C 23 78 */	mr r28, r4
/* 8003352C 0003046C  3B A0 00 00 */	li r29, 0
/* 80033530 00030470  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80033534 00030474  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80033538 00030478  3B E3 00 9C */	addi r31, r3, 0x9c
lbl_8003353C:
/* 8003353C 0003047C  7F E3 FB 78 */	mr r3, r31
/* 80033540 00030480  38 1D 00 0B */	addi r0, r29, 0xb
/* 80033544 00030484  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 80033548 00030488  7F C4 F3 78 */	mr r4, r30
/* 8003354C 0003048C  38 A0 00 01 */	li r5, 1
/* 80033550 00030490  4B FF FA E1 */	bl getItem__17dSv_player_item_cCFib
/* 80033554 00030494  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80033558 00030498  28 00 00 FF */	cmplwi r0, 0xff
/* 8003355C 0003049C  40 82 00 18 */	bne lbl_80033574
/* 80033560 000304A0  7F E3 FB 78 */	mr r3, r31
/* 80033564 000304A4  7F C4 F3 78 */	mr r4, r30
/* 80033568 000304A8  7F 85 E3 78 */	mr r5, r28
/* 8003356C 000304AC  4B FF FA 4D */	bl setItem__17dSv_player_item_cFiUc
/* 80033570 000304B0  48 00 00 10 */	b lbl_80033580
lbl_80033574:
/* 80033574 000304B4  3B BD 00 01 */	addi r29, r29, 1
/* 80033578 000304B8  2C 1D 00 04 */	cmpwi r29, 4
/* 8003357C 000304BC  41 80 FF C0 */	blt lbl_8003353C
lbl_80033580:
/* 80033580 000304C0  39 61 00 20 */	addi r11, r1, 0x20
/* 80033584 000304C4  48 32 EC A1 */	bl _restgpr_28
/* 80033588 000304C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003358C 000304CC  7C 08 03 A6 */	mtlr r0
/* 80033590 000304D0  38 21 00 20 */	addi r1, r1, 0x20
/* 80033594 000304D4  4E 80 00 20 */	blr 
}

asm void dSv_player_item_c::setEquipBottleItemIn(u8, u8) {
    nofralloc
    /* 80033598 000304D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003359C 000304DC  7C 08 02 A6 */	mflr r0
/* 800335A0 000304E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800335A4 000304E4  39 61 00 20 */	addi r11, r1, 0x20
/* 800335A8 000304E8  48 32 EC 35 */	bl _savegpr_29
/* 800335AC 000304EC  7C 7D 1B 78 */	mr r29, r3
/* 800335B0 000304F0  7C 9F 23 78 */	mr r31, r4
/* 800335B4 000304F4  7C BE 2B 78 */	mr r30, r5
/* 800335B8 000304F8  7F C3 F3 78 */	mr r3, r30
/* 800335BC 000304FC  4B FF F3 5D */	bl dSv_item_rename__FUc
/* 800335C0 00030500  7C 7E 1B 78 */	mr r30, r3
/* 800335C4 00030504  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 800335C8 00030508  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 800335CC 0003050C  57 FF 06 3E */	clrlwi r31, r31, 0x18
/* 800335D0 00030510  7F E4 FB 78 */	mr r4, r31
/* 800335D4 00030514  4B FF F4 89 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 800335D8 00030518  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800335DC 0003051C  28 00 00 0B */	cmplwi r0, 0xb
/* 800335E0 00030520  41 80 00 C4 */	blt lbl_800336A4
/* 800335E4 00030524  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 800335E8 00030528  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 800335EC 0003052C  7F E4 FB 78 */	mr r4, r31
/* 800335F0 00030530  4B FF F4 6D */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 800335F4 00030534  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800335F8 00030538  28 00 00 0E */	cmplwi r0, 0xe
/* 800335FC 0003053C  41 81 00 A8 */	bgt lbl_800336A4
/* 80033600 00030540  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80033604 00030544  28 00 00 6B */	cmplwi r0, 0x6b
/* 80033608 00030548  40 82 00 24 */	bne lbl_8003362C
/* 8003360C 0003054C  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80033610 00030550  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80033614 00030554  7F E4 FB 78 */	mr r4, r31
/* 80033618 00030558  4B FF F4 45 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8003361C 0003055C  7C 64 1B 78 */	mr r4, r3
/* 80033620 00030560  3C 60 80 43 */	lis r3, lbl_80430188@ha
/* 80033624 00030564  38 63 01 88 */	addi r3, r3, lbl_80430188@l
/* 80033628 00030568  48 1E A6 9D */	bl dMeter2Info_c_NS_setHotSpringTimer
lbl_8003362C:
/* 8003362C 0003056C  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80033630 00030570  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80033634 00030574  7F E4 FB 78 */	mr r4, r31
/* 80033638 00030578  4B FF F4 25 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8003363C 0003057C  7C 60 1B 78 */	mr r0, r3
/* 80033640 00030580  7F A3 EB 78 */	mr r3, r29
/* 80033644 00030584  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80033648 00030588  7F C5 F3 78 */	mr r5, r30
/* 8003364C 0003058C  4B FF F9 6D */	bl setItem__17dSv_player_item_cFiUc
/* 80033650 00030590  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80033654 00030594  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80033658 00030598  7F E4 FB 78 */	mr r4, r31
/* 8003365C 0003059C  4B FF F4 01 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 80033660 000305A0  7C 60 1B 78 */	mr r0, r3
/* 80033664 000305A4  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80033668 000305A8  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 8003366C 000305AC  38 63 00 9C */	addi r3, r3, 0x9c
/* 80033670 000305B0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80033674 000305B4  7F C5 F3 78 */	mr r5, r30
/* 80033678 000305B8  4B FF F9 41 */	bl setItem__17dSv_player_item_cFiUc
/* 8003367C 000305BC  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80033680 000305C0  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80033684 000305C4  7F E4 FB 78 */	mr r4, r31
/* 80033688 000305C8  4B FF F3 D5 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8003368C 000305CC  3C 80 80 40 */	lis r4, lbl_804061C0@ha
/* 80033690 000305D0  38 84 61 C0 */	addi r4, r4, lbl_804061C0@l
/* 80033694 000305D4  98 64 5E 7D */	stb r3, 0x5e7d(r4)
/* 80033698 000305D8  9B C4 5E 7E */	stb r30, 0x5e7e(r4)
/* 8003369C 000305DC  7F E3 FB 78 */	mr r3, r31
/* 800336A0 000305E0  4B FF A7 55 */	bl dComIfGp_setSelectItem
lbl_800336A4:
/* 800336A4 000305E4  39 61 00 20 */	addi r11, r1, 0x20
/* 800336A8 000305E8  48 32 EB 81 */	bl _restgpr_29
/* 800336AC 000305EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800336B0 000305F0  7C 08 03 A6 */	mtlr r0
/* 800336B4 000305F4  38 21 00 20 */	addi r1, r1, 0x20
/* 800336B8 000305F8  4E 80 00 20 */	blr
}

// void dSv_player_item_c::setEquipBottleItemEmpty(u8 selected_index) {
//     setEquipBottleItemIn__17dSv_player_item_cFUcUc(selected_index,(u8)EMPTY_BOTTLE);
// }

asm void dSv_player_item_c::setEquipBottleItemEmpty(u8){
    nofralloc
    /* 800336BC 000305FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800336C0 00030600  7C 08 02 A6 */	mflr r0
/* 800336C4 00030604  90 01 00 14 */	stw r0, 0x14(r1)
/* 800336C8 00030608  38 A0 00 60 */	li r5, 0x60
/* 800336CC 0003060C  4B FF FE CD */	bl setEquipBottleItemIn__17dSv_player_item_cFUcUc
/* 800336D0 00030610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800336D4 00030614  7C 08 03 A6 */	mtlr r0
/* 800336D8 00030618  38 21 00 10 */	addi r1, r1, 0x10
/* 800336DC 0003061C  4E 80 00 20 */	blr 
}

u8 dSv_player_item_c::checkBottle(u8 i_item_id){
    u8 item_id;
    u8 num_bottles = 0;

    item_id = dSv_item_rename(i_item_id);
    for (int i = 0; i < MAX_BOTTLES; i++) {
        if (item_id == items[i+0xb]) {
            num_bottles++;
        }
    }
    return num_bottles;
}

asm u8 dSv_player_item_c::checkInsectBottle(void){
    nofralloc
/* 80033754 00030694  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80033758 00030698  7C 08 02 A6 */	mflr r0
/* 8003375C 0003069C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80033760 000306A0  39 61 00 20 */	addi r11, r1, 0x20
/* 80033764 000306A4  48 32 EA 71 */	bl _savegpr_27
/* 80033768 000306A8  3B 60 00 00 */	li r27, 0
/* 8003376C 000306AC  3B E0 00 00 */	li r31, 0
/* 80033770 000306B0  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80033774 000306B4  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80033778 000306B8  3B A3 00 CC */	addi r29, r3, 0xcc
/* 8003377C 000306BC  3B 83 07 F0 */	addi r28, r3, 0x7f0
/* 80033780 000306C0  3C 60 80 3A */	lis r3, lbl_803A7288@ha
/* 80033784 000306C4  3B C3 72 88 */	addi r30, r3, lbl_803A7288@l
lbl_80033788:
/* 80033788 000306C8  7F A3 EB 78 */	mr r3, r29
/* 8003378C 000306CC  38 1B 00 C0 */	addi r0, r27, 0xc0
/* 80033790 000306D0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80033794 000306D4  48 00 07 35 */	bl dSv_player_get_item_c_NS_isFirstBit
/* 80033798 000306D8  2C 03 00 00 */	cmpwi r3, 0
/* 8003379C 000306DC  41 82 00 24 */	beq lbl_800337C0
/* 800337A0 000306E0  7F 83 E3 78 */	mr r3, r28
/* 800337A4 000306E4  7C 9E FA 14 */	add r4, r30, r31
/* 800337A8 000306E8  A0 84 03 22 */	lhz r4, 0x322(r4)
/* 800337AC 000306EC  48 00 12 11 */	bl dSv_event_c_NS_isEventBit
/* 800337B0 000306F0  2C 03 00 00 */	cmpwi r3, 0
/* 800337B4 000306F4  40 82 00 0C */	bne lbl_800337C0
/* 800337B8 000306F8  38 60 00 01 */	li r3, 1
/* 800337BC 000306FC  48 00 00 18 */	b lbl_800337D4
lbl_800337C0:
/* 800337C0 00030700  3B 7B 00 01 */	addi r27, r27, 1
/* 800337C4 00030704  2C 1B 00 18 */	cmpwi r27, 0x18
/* 800337C8 00030708  3B FF 00 02 */	addi r31, r31, 2
/* 800337CC 0003070C  41 80 FF BC */	blt lbl_80033788
/* 800337D0 00030710  38 60 00 00 */	li r3, 0
lbl_800337D4:
/* 800337D4 00030714  39 61 00 20 */	addi r11, r1, 0x20
/* 800337D8 00030718  48 32 EA 49 */	bl _restgpr_27
/* 800337DC 0003071C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800337E0 00030720  7C 08 03 A6 */	mtlr r0
/* 800337E4 00030724  38 21 00 20 */	addi r1, r1, 0x20
/* 800337E8 00030728  4E 80 00 20 */	blr 
}

u8 dSv_player_item_c::checkEmptyBottle(void) {
    u8 num = 0;

    for(int i = 0; i < MAX_BOTTLES; i++) {
        if(items[i+0xb] == EMPTY_BOTTLE) {
            num++;
        }
    }
    return num;
}

asm void dSv_player_item_c::setBombBagItemIn(u8, u8, bool) {
    nofralloc
    /* 80033828 00030768  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003382C 0003076C  7C 08 02 A6 */	mflr r0
/* 80033830 00030770  90 01 00 24 */	stw r0, 0x24(r1)
/* 80033834 00030774  39 61 00 20 */	addi r11, r1, 0x20
/* 80033838 00030778  48 32 E9 A5 */	bl _savegpr_29
/* 8003383C 0003077C  7C BE 2B 78 */	mr r30, r5
/* 80033840 00030780  7C DD 33 78 */	mr r29, r6
/* 80033844 00030784  3B E0 00 00 */	li r31, 0
/* 80033848 00030788  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 8003384C 0003078C  38 00 00 03 */	li r0, 3
/* 80033850 00030790  7C 09 03 A6 */	mtctr r0
lbl_80033854:
/* 80033854 00030794  38 9F 00 0F */	addi r4, r31, 0xf
/* 80033858 00030798  7C 03 20 AE */	lbzx r0, r3, r4
/* 8003385C 0003079C  7C 05 00 40 */	cmplw r5, r0
/* 80033860 000307A0  40 82 00 90 */	bne lbl_800338F0
/* 80033864 000307A4  7F C5 F3 78 */	mr r5, r30
/* 80033868 000307A8  4B FF F7 51 */	bl setItem__17dSv_player_item_cFiUc
/* 8003386C 000307AC  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80033870 000307B0  28 00 00 01 */	cmplwi r0, 1
/* 80033874 000307B4  40 82 00 3C */	bne lbl_800338B0
/* 80033878 000307B8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8003387C 000307BC  28 00 00 50 */	cmplwi r0, 0x50
/* 80033880 000307C0  41 82 00 30 */	beq lbl_800338B0
/* 80033884 000307C4  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80033888 000307C8  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 8003388C 000307CC  38 63 00 F8 */	addi r3, r3, 0xf8
/* 80033890 000307D0  7F C4 F3 78 */	mr r4, r30
/* 80033894 000307D4  48 00 08 65 */	bl dSv_player_item_max_c_NS_getBombNum
/* 80033898 000307D8  7C 65 1B 78 */	mr r5, r3
/* 8003389C 000307DC  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 800338A0 000307E0  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 800338A4 000307E4  38 63 00 EC */	addi r3, r3, 0xec
/* 800338A8 000307E8  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 800338AC 000307EC  48 00 06 C1 */	bl dSv_player_item_record_c_NS_setBombNum
lbl_800338B0:
/* 800338B0 000307F0  3B A0 00 00 */	li r29, 0
/* 800338B4 000307F4  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 800338B8 000307F8  3B C3 61 C0 */	addi r30, r3, lbl_804061C0@l
/* 800338BC 000307FC  3B FF 00 0F */	addi r31, r31, 0xf
lbl_800338C0:
/* 800338C0 00030800  7F C3 F3 78 */	mr r3, r30
/* 800338C4 00030804  7F A4 EB 78 */	mr r4, r29
/* 800338C8 00030808  4B FF F1 95 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 800338CC 0003080C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800338D0 00030810  7C 1F 00 00 */	cmpw r31, r0
/* 800338D4 00030814  40 82 00 0C */	bne lbl_800338E0
/* 800338D8 00030818  7F A3 EB 78 */	mr r3, r29
/* 800338DC 0003081C  4B FF A5 19 */	bl dComIfGp_setSelectItem
lbl_800338E0:
/* 800338E0 00030820  3B BD 00 01 */	addi r29, r29, 1
/* 800338E4 00030824  2C 1D 00 03 */	cmpwi r29, 3
/* 800338E8 00030828  41 80 FF D8 */	blt lbl_800338C0
/* 800338EC 0003082C  48 00 00 0C */	b lbl_800338F8
lbl_800338F0:
/* 800338F0 00030830  3B FF 00 01 */	addi r31, r31, 1
/* 800338F4 00030834  42 00 FF 60 */	bdnz lbl_80033854
lbl_800338F8:
/* 800338F8 00030838  39 61 00 20 */	addi r11, r1, 0x20
/* 800338FC 0003083C  48 32 E9 2D */	bl _restgpr_29
/* 80033900 00030840  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80033904 00030844  7C 08 03 A6 */	mtlr r0
/* 80033908 00030848  38 21 00 20 */	addi r1, r1, 0x20
/* 8003390C 0003084C  4E 80 00 20 */	blr 
}