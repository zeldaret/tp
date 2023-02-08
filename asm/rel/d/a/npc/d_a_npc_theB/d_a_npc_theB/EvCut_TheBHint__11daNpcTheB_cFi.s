lbl_80AFFFE0:
/* 80AFFFE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AFFFE4  7C 08 02 A6 */	mflr r0
/* 80AFFFE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AFFFEC  39 61 00 40 */	addi r11, r1, 0x40
/* 80AFFFF0  4B 86 21 E9 */	bl _savegpr_28
/* 80AFFFF4  7C 7E 1B 78 */	mr r30, r3
/* 80AFFFF8  7C 9C 23 78 */	mr r28, r4
/* 80AFFFFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B00000  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B00004  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80B00008  7F A3 EB 78 */	mr r3, r29
/* 80B0000C  4B 54 7F 51 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80B00010  7C 7F 1B 78 */	mr r31, r3
/* 80B00014  7F A3 EB 78 */	mr r3, r29
/* 80B00018  7F 84 E3 78 */	mr r4, r28
/* 80B0001C  4B 54 7D 31 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B00020  2C 03 00 00 */	cmpwi r3, 0
/* 80B00024  41 82 00 B0 */	beq lbl_80B000D4
/* 80B00028  80 9F 00 00 */	lwz r4, 0(r31)
/* 80B0002C  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80B00030  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80B00034  7C 04 00 00 */	cmpw r4, r0
/* 80B00038  41 82 00 4C */	beq lbl_80B00084
/* 80B0003C  40 80 00 14 */	bge lbl_80B00050
/* 80B00040  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B00044  7C 04 00 00 */	cmpw r4, r0
/* 80B00048  40 80 00 18 */	bge lbl_80B00060
/* 80B0004C  48 00 00 88 */	b lbl_80B000D4
lbl_80B00050:
/* 80B00050  38 03 30 34 */	addi r0, r3, 0x3034
/* 80B00054  7C 04 00 00 */	cmpw r4, r0
/* 80B00058  40 80 00 7C */	bge lbl_80B000D4
/* 80B0005C  48 00 00 3C */	b lbl_80B00098
lbl_80B00060:
/* 80B00060  7F C3 F3 78 */	mr r3, r30
/* 80B00064  38 80 00 08 */	li r4, 8
/* 80B00068  3C A0 80 B0 */	lis r5, lit_4248@ha /* 0x80B00DF0@ha */
/* 80B0006C  C0 25 0D F0 */	lfs f1, lit_4248@l(r5)  /* 0x80B00DF0@l */
/* 80B00070  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B00074  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B00078  7D 89 03 A6 */	mtctr r12
/* 80B0007C  4E 80 04 21 */	bctrl 
/* 80B00080  48 00 00 54 */	b lbl_80B000D4
lbl_80B00084:
/* 80B00084  7F C3 F3 78 */	mr r3, r30
/* 80B00088  80 9E 0D F8 */	lwz r4, 0xdf8(r30)
/* 80B0008C  38 A0 00 00 */	li r5, 0
/* 80B00090  4B 65 3C 8D */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B00094  48 00 00 40 */	b lbl_80B000D4
lbl_80B00098:
/* 80B00098  A0 7E 0E 04 */	lhz r3, 0xe04(r30)
/* 80B0009C  80 9E 0D F0 */	lwz r4, 0xdf0(r30)
/* 80B000A0  38 A1 00 18 */	addi r5, r1, 0x18
/* 80B000A4  38 C1 00 10 */	addi r6, r1, 0x10
/* 80B000A8  4B 65 56 CD */	bl daNpcF_getPlayerInfoFromPlayerList__FiiR4cXyzR5csXyz
/* 80B000AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B000B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B000B4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B000B8  38 81 00 18 */	addi r4, r1, 0x18
/* 80B000BC  A8 A1 00 12 */	lha r5, 0x12(r1)
/* 80B000C0  38 C0 00 00 */	li r6, 0
/* 80B000C4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B000C8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B000CC  7D 89 03 A6 */	mtctr r12
/* 80B000D0  4E 80 04 21 */	bctrl 
lbl_80B000D4:
/* 80B000D4  83 BE 09 50 */	lwz r29, 0x950(r30)
/* 80B000D8  7F C3 F3 78 */	mr r3, r30
/* 80B000DC  38 81 00 0C */	addi r4, r1, 0xc
/* 80B000E0  38 A1 00 08 */	addi r5, r1, 8
/* 80B000E4  7F C6 F3 78 */	mr r6, r30
/* 80B000E8  38 E0 00 00 */	li r7, 0
/* 80B000EC  4B 65 36 2D */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B000F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B000F4  41 82 00 58 */	beq lbl_80B0014C
/* 80B000F8  88 1E 09 EB */	lbz r0, 0x9eb(r30)
/* 80B000FC  28 00 00 00 */	cmplwi r0, 0
/* 80B00100  40 82 00 80 */	bne lbl_80B00180
/* 80B00104  7F C3 F3 78 */	mr r3, r30
/* 80B00108  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B0010C  3C A0 80 B0 */	lis r5, lit_5126@ha /* 0x80B00F88@ha */
/* 80B00110  C0 25 0F 88 */	lfs f1, lit_5126@l(r5)  /* 0x80B00F88@l */
/* 80B00114  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B00118  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B0011C  7D 89 03 A6 */	mtctr r12
/* 80B00120  4E 80 04 21 */	bctrl 
/* 80B00124  7F C3 F3 78 */	mr r3, r30
/* 80B00128  80 81 00 08 */	lwz r4, 8(r1)
/* 80B0012C  3C A0 80 B0 */	lis r5, lit_5126@ha /* 0x80B00F88@ha */
/* 80B00130  C0 25 0F 88 */	lfs f1, lit_5126@l(r5)  /* 0x80B00F88@l */
/* 80B00134  38 A0 00 00 */	li r5, 0
/* 80B00138  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B0013C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B00140  7D 89 03 A6 */	mtctr r12
/* 80B00144  4E 80 04 21 */	bctrl 
/* 80B00148  48 00 00 38 */	b lbl_80B00180
lbl_80B0014C:
/* 80B0014C  2C 1D 00 00 */	cmpwi r29, 0
/* 80B00150  41 82 00 30 */	beq lbl_80B00180
/* 80B00154  88 1E 09 EB */	lbz r0, 0x9eb(r30)
/* 80B00158  28 00 00 00 */	cmplwi r0, 0
/* 80B0015C  40 82 00 24 */	bne lbl_80B00180
/* 80B00160  7F C3 F3 78 */	mr r3, r30
/* 80B00164  38 80 00 03 */	li r4, 3
/* 80B00168  3C A0 80 B0 */	lis r5, lit_5126@ha /* 0x80B00F88@ha */
/* 80B0016C  C0 25 0F 88 */	lfs f1, lit_5126@l(r5)  /* 0x80B00F88@l */
/* 80B00170  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B00174  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B00178  7D 89 03 A6 */	mtctr r12
/* 80B0017C  4E 80 04 21 */	bctrl 
lbl_80B00180:
/* 80B00180  80 9F 00 00 */	lwz r4, 0(r31)
/* 80B00184  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80B00188  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80B0018C  7C 04 00 00 */	cmpw r4, r0
/* 80B00190  41 82 00 2C */	beq lbl_80B001BC
/* 80B00194  40 80 00 14 */	bge lbl_80B001A8
/* 80B00198  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B0019C  7C 04 00 00 */	cmpw r4, r0
/* 80B001A0  40 80 00 14 */	bge lbl_80B001B4
/* 80B001A4  48 00 00 44 */	b lbl_80B001E8
lbl_80B001A8:
/* 80B001A8  38 03 30 34 */	addi r0, r3, 0x3034
/* 80B001AC  7C 04 00 00 */	cmpw r4, r0
/* 80B001B0  40 80 00 38 */	bge lbl_80B001E8
lbl_80B001B4:
/* 80B001B4  38 60 00 01 */	li r3, 1
/* 80B001B8  48 00 00 34 */	b lbl_80B001EC
lbl_80B001BC:
/* 80B001BC  7F C3 F3 78 */	mr r3, r30
/* 80B001C0  38 80 00 00 */	li r4, 0
/* 80B001C4  38 A0 00 01 */	li r5, 1
/* 80B001C8  38 C0 00 00 */	li r6, 0
/* 80B001CC  4B 65 3B B9 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B001D0  2C 03 00 00 */	cmpwi r3, 0
/* 80B001D4  41 82 00 14 */	beq lbl_80B001E8
/* 80B001D8  38 00 00 00 */	li r0, 0
/* 80B001DC  98 1E 0E 0C */	stb r0, 0xe0c(r30)
/* 80B001E0  38 60 00 01 */	li r3, 1
/* 80B001E4  48 00 00 08 */	b lbl_80B001EC
lbl_80B001E8:
/* 80B001E8  38 60 00 00 */	li r3, 0
lbl_80B001EC:
/* 80B001EC  39 61 00 40 */	addi r11, r1, 0x40
/* 80B001F0  4B 86 20 35 */	bl _restgpr_28
/* 80B001F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B001F8  7C 08 03 A6 */	mtlr r0
/* 80B001FC  38 21 00 40 */	addi r1, r1, 0x40
/* 80B00200  4E 80 00 20 */	blr 
