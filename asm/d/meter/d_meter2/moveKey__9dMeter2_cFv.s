lbl_802210AC:
/* 802210AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802210B0  7C 08 02 A6 */	mflr r0
/* 802210B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802210B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802210BC  7C 7F 1B 78 */	mr r31, r3
/* 802210C0  38 C0 00 00 */	li r6, 0
/* 802210C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802210C8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802210CC  A8 64 5D C8 */	lha r3, 0x5dc8(r4)
/* 802210D0  7C 60 07 35 */	extsh. r0, r3
/* 802210D4  41 82 00 40 */	beq lbl_80221114
/* 802210D8  88 04 09 74 */	lbz r0, 0x974(r4)
/* 802210DC  7C 00 1A 14 */	add r0, r0, r3
/* 802210E0  7C 05 07 34 */	extsh r5, r0
/* 802210E4  2C 05 00 63 */	cmpwi r5, 0x63
/* 802210E8  40 81 00 0C */	ble lbl_802210F4
/* 802210EC  38 A0 00 63 */	li r5, 0x63
/* 802210F0  48 00 00 10 */	b lbl_80221100
lbl_802210F4:
/* 802210F4  7C A0 07 35 */	extsh. r0, r5
/* 802210F8  40 80 00 08 */	bge lbl_80221100
/* 802210FC  38 A0 00 00 */	li r5, 0
lbl_80221100:
/* 80221100  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80221104  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80221108  98 A3 09 74 */	stb r5, 0x974(r3)
/* 8022110C  38 00 00 00 */	li r0, 0
/* 80221110  B0 04 5D C8 */	sth r0, 0x5dc8(r4)
lbl_80221114:
/* 80221114  A8 9F 01 B2 */	lha r4, 0x1b2(r31)
/* 80221118  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022111C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80221120  88 03 09 74 */	lbz r0, 0x974(r3)
/* 80221124  7C 04 00 00 */	cmpw r4, r0
/* 80221128  41 82 00 28 */	beq lbl_80221150
/* 8022112C  40 80 00 14 */	bge lbl_80221140
/* 80221130  38 04 00 01 */	addi r0, r4, 1
/* 80221134  B0 1F 01 B2 */	sth r0, 0x1b2(r31)
/* 80221138  38 C0 00 01 */	li r6, 1
/* 8022113C  48 00 00 14 */	b lbl_80221150
lbl_80221140:
/* 80221140  40 81 00 10 */	ble lbl_80221150
/* 80221144  38 04 FF FF */	addi r0, r4, -1
/* 80221148  B0 1F 01 B2 */	sth r0, 0x1b2(r31)
/* 8022114C  38 C0 00 01 */	li r6, 1
lbl_80221150:
/* 80221150  C0 1F 02 9C */	lfs f0, 0x29c(r31)
/* 80221154  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80221158  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8022115C  C0 23 03 5C */	lfs f1, 0x35c(r3)
/* 80221160  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80221164  41 82 00 0C */	beq lbl_80221170
/* 80221168  D0 3F 02 9C */	stfs f1, 0x29c(r31)
/* 8022116C  38 C0 00 01 */	li r6, 1
lbl_80221170:
/* 80221170  C0 1F 02 A0 */	lfs f0, 0x2a0(r31)
/* 80221174  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80221178  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8022117C  C0 23 03 60 */	lfs f1, 0x360(r3)
/* 80221180  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80221184  41 82 00 0C */	beq lbl_80221190
/* 80221188  D0 3F 02 A0 */	stfs f1, 0x2a0(r31)
/* 8022118C  38 C0 00 01 */	li r6, 1
lbl_80221190:
/* 80221190  C0 1F 02 A4 */	lfs f0, 0x2a4(r31)
/* 80221194  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80221198  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8022119C  C0 23 03 64 */	lfs f1, 0x364(r3)
/* 802211A0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802211A4  41 82 00 0C */	beq lbl_802211B0
/* 802211A8  D0 3F 02 A4 */	stfs f1, 0x2a4(r31)
/* 802211AC  38 C0 00 01 */	li r6, 1
lbl_802211B0:
/* 802211B0  C0 1F 02 A8 */	lfs f0, 0x2a8(r31)
/* 802211B4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802211B8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802211BC  C0 23 03 8C */	lfs f1, 0x38c(r3)
/* 802211C0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802211C4  41 82 00 0C */	beq lbl_802211D0
/* 802211C8  D0 3F 02 A8 */	stfs f1, 0x2a8(r31)
/* 802211CC  38 C0 00 01 */	li r6, 1
lbl_802211D0:
/* 802211D0  C0 1F 02 AC */	lfs f0, 0x2ac(r31)
/* 802211D4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802211D8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802211DC  C0 23 03 90 */	lfs f1, 0x390(r3)
/* 802211E0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802211E4  41 82 00 0C */	beq lbl_802211F0
/* 802211E8  D0 3F 02 AC */	stfs f1, 0x2ac(r31)
/* 802211EC  38 C0 00 01 */	li r6, 1
lbl_802211F0:
/* 802211F0  C0 1F 02 B0 */	lfs f0, 0x2b0(r31)
/* 802211F4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802211F8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802211FC  C0 23 03 94 */	lfs f1, 0x394(r3)
/* 80221200  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80221204  41 82 00 0C */	beq lbl_80221210
/* 80221208  D0 3F 02 B0 */	stfs f1, 0x2b0(r31)
/* 8022120C  38 C0 00 01 */	li r6, 1
lbl_80221210:
/* 80221210  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 80221214  28 00 00 01 */	cmplwi r0, 1
/* 80221218  40 82 00 10 */	bne lbl_80221228
/* 8022121C  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 80221220  A8 9F 01 B2 */	lha r4, 0x1b2(r31)
/* 80221224  4B FF 58 1D */	bl drawKey__13dMeter2Draw_cFs
lbl_80221228:
/* 80221228  7F E3 FB 78 */	mr r3, r31
/* 8022122C  48 00 3D 45 */	bl alphaAnimeKey__9dMeter2_cFv
/* 80221230  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80221234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80221238  7C 08 03 A6 */	mtlr r0
/* 8022123C  38 21 00 10 */	addi r1, r1, 0x10
/* 80221240  4E 80 00 20 */	blr 
