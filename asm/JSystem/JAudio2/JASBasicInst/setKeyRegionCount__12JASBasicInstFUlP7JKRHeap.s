lbl_8029819C:
/* 8029819C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802981A0  7C 08 02 A6 */	mflr r0
/* 802981A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802981A8  39 61 00 20 */	addi r11, r1, 0x20
/* 802981AC  48 0C A0 31 */	bl _savegpr_29
/* 802981B0  7C 7D 1B 78 */	mr r29, r3
/* 802981B4  7C 9E 23 78 */	mr r30, r4
/* 802981B8  7C BF 2B 78 */	mr r31, r5
/* 802981BC  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802981C0  3C 80 80 2A */	lis r4, __dt__Q212JASBasicInst7TKeymapFv@ha /* 0x80298250@ha */
/* 802981C4  38 84 82 50 */	addi r4, r4, __dt__Q212JASBasicInst7TKeymapFv@l /* 0x80298250@l */
/* 802981C8  48 0C 9A A5 */	bl __destroy_new_array
/* 802981CC  57 C3 20 36 */	slwi r3, r30, 4
/* 802981D0  38 63 00 10 */	addi r3, r3, 0x10
/* 802981D4  7F E4 FB 78 */	mr r4, r31
/* 802981D8  38 A0 00 00 */	li r5, 0
/* 802981DC  48 03 6B 35 */	bl __nwa__FUlP7JKRHeapi
/* 802981E0  3C 80 80 2A */	lis r4, __ct__Q212JASBasicInst7TKeymapFv@ha /* 0x802982D4@ha */
/* 802981E4  38 84 82 D4 */	addi r4, r4, __ct__Q212JASBasicInst7TKeymapFv@l /* 0x802982D4@l */
/* 802981E8  3C A0 80 2A */	lis r5, __dt__Q212JASBasicInst7TKeymapFv@ha /* 0x80298250@ha */
/* 802981EC  38 A5 82 50 */	addi r5, r5, __dt__Q212JASBasicInst7TKeymapFv@l /* 0x80298250@l */
/* 802981F0  38 C0 00 10 */	li r6, 0x10
/* 802981F4  7F C7 F3 78 */	mr r7, r30
/* 802981F8  48 0C 9D 1D */	bl __construct_new_array
/* 802981FC  90 7D 00 18 */	stw r3, 0x18(r29)
/* 80298200  93 DD 00 14 */	stw r30, 0x14(r29)
/* 80298204  39 61 00 20 */	addi r11, r1, 0x20
/* 80298208  48 0C A0 21 */	bl _restgpr_29
/* 8029820C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80298210  7C 08 03 A6 */	mtlr r0
/* 80298214  38 21 00 20 */	addi r1, r1, 0x20
/* 80298218  4E 80 00 20 */	blr 
