lbl_80980C1C:
/* 80980C1C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80980C20  7C 08 02 A6 */	mflr r0
/* 80980C24  90 01 00 44 */	stw r0, 0x44(r1)
/* 80980C28  39 61 00 40 */	addi r11, r1, 0x40
/* 80980C2C  4B 9E 15 A5 */	bl _savegpr_26
/* 80980C30  7C 7A 1B 78 */	mr r26, r3
/* 80980C34  7C 9B 23 78 */	mr r27, r4
/* 80980C38  3C A0 80 98 */	lis r5, l_resMANa@ha /* 0x8098699C@ha */
/* 80980C3C  3B E5 69 9C */	addi r31, r5, l_resMANa@l /* 0x8098699C@l */
/* 80980C40  48 00 06 41 */	bl getNpcMdlDataP__11daNpcChat_cFi
/* 80980C44  7C 7C 1B 78 */	mr r28, r3
/* 80980C48  7F 43 D3 78 */	mr r3, r26
/* 80980C4C  7F 64 DB 78 */	mr r4, r27
/* 80980C50  48 00 07 25 */	bl getTexAnmP__11daNpcChat_cFi
/* 80980C54  28 03 00 00 */	cmplwi r3, 0
/* 80980C58  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80980C5C  3B A3 00 84 */	addi r29, r3, 0x0084 /* 0x11000084@l */
/* 80980C60  41 82 00 0C */	beq lbl_80980C6C
/* 80980C64  3C 60 11 02 */	lis r3, 0x1102 /* 0x11020084@ha */
/* 80980C68  3B A3 00 84 */	addi r29, r3, 0x0084 /* 0x11020084@l */
lbl_80980C6C:
/* 80980C6C  38 60 00 58 */	li r3, 0x58
/* 80980C70  4B 94 DF DD */	bl __nw__FUl
/* 80980C74  7C 60 1B 79 */	or. r0, r3, r3
/* 80980C78  41 82 00 40 */	beq lbl_80980CB8
/* 80980C7C  38 1A 0B 48 */	addi r0, r26, 0xb48
/* 80980C80  90 01 00 08 */	stw r0, 8(r1)
/* 80980C84  3C 00 00 08 */	lis r0, 8
/* 80980C88  90 01 00 0C */	stw r0, 0xc(r1)
/* 80980C8C  93 A1 00 10 */	stw r29, 0x10(r1)
/* 80980C90  7F 84 E3 78 */	mr r4, r28
/* 80980C94  38 A0 00 00 */	li r5, 0
/* 80980C98  38 C0 00 00 */	li r6, 0
/* 80980C9C  38 E0 00 00 */	li r7, 0
/* 80980CA0  39 00 FF FF */	li r8, -1
/* 80980CA4  C0 3F 05 74 */	lfs f1, 0x574(r31)
/* 80980CA8  39 20 00 00 */	li r9, 0
/* 80980CAC  39 40 FF FF */	li r10, -1
/* 80980CB0  4B 68 FB 21 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80980CB4  7C 60 1B 78 */	mr r0, r3
lbl_80980CB8:
/* 80980CB8  90 1A 05 68 */	stw r0, 0x568(r26)
/* 80980CBC  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80980CC0  28 03 00 00 */	cmplwi r3, 0
/* 80980CC4  41 82 00 1C */	beq lbl_80980CE0
/* 80980CC8  80 03 00 04 */	lwz r0, 4(r3)
/* 80980CCC  28 00 00 00 */	cmplwi r0, 0
/* 80980CD0  40 82 00 10 */	bne lbl_80980CE0
/* 80980CD4  4B 69 06 3D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80980CD8  38 00 00 00 */	li r0, 0
/* 80980CDC  90 1A 05 68 */	stw r0, 0x568(r26)
lbl_80980CE0:
/* 80980CE0  80 9A 05 68 */	lwz r4, 0x568(r26)
/* 80980CE4  28 04 00 00 */	cmplwi r4, 0
/* 80980CE8  40 82 00 0C */	bne lbl_80980CF4
/* 80980CEC  38 60 00 00 */	li r3, 0
/* 80980CF0  48 00 01 18 */	b lbl_80980E08
lbl_80980CF4:
/* 80980CF4  1C 1B 00 0C */	mulli r0, r27, 0xc
/* 80980CF8  38 7F 04 0C */	addi r3, r31, 0x40c
/* 80980CFC  7C 43 04 2E */	lfsx f2, r3, r0
/* 80980D00  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80980D04  7C 63 02 14 */	add r3, r3, r0
/* 80980D08  C0 23 00 04 */	lfs f1, 4(r3)
/* 80980D0C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80980D10  C0 03 00 08 */	lfs f0, 8(r3)
/* 80980D14  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80980D18  38 00 00 01 */	li r0, 1
/* 80980D1C  98 04 00 54 */	stb r0, 0x54(r4)
/* 80980D20  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80980D24  D0 43 00 40 */	stfs f2, 0x40(r3)
/* 80980D28  D0 23 00 44 */	stfs f1, 0x44(r3)
/* 80980D2C  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 80980D30  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80980D34  80 63 00 00 */	lwz r3, 0(r3)
/* 80980D38  83 C3 00 04 */	lwz r30, 4(r3)
/* 80980D3C  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80980D40  80 63 00 04 */	lwz r3, 4(r3)
/* 80980D44  83 A3 00 14 */	lwz r29, 0x14(r3)
/* 80980D48  38 A0 00 00 */	li r5, 0
/* 80980D4C  3C 60 80 98 */	lis r3, ctrlJointCallBack__11daNpcChat_cFP8J3DJointi@ha /* 0x80982AB8@ha */
/* 80980D50  38 83 2A B8 */	addi r4, r3, ctrlJointCallBack__11daNpcChat_cFP8J3DJointi@l /* 0x80982AB8@l */
/* 80980D54  48 00 00 18 */	b lbl_80980D6C
lbl_80980D58:
/* 80980D58  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80980D5C  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 80980D60  7C 63 00 2E */	lwzx r3, r3, r0
/* 80980D64  90 83 00 04 */	stw r4, 4(r3)
/* 80980D68  38 A5 00 01 */	addi r5, r5, 1
lbl_80980D6C:
/* 80980D6C  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 80980D70  A0 1C 00 2C */	lhz r0, 0x2c(r28)
/* 80980D74  7C 03 00 40 */	cmplw r3, r0
/* 80980D78  41 80 FF E0 */	blt lbl_80980D58
/* 80980D7C  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80980D80  80 63 00 04 */	lwz r3, 4(r3)
/* 80980D84  93 43 00 14 */	stw r26, 0x14(r3)
/* 80980D88  7F 43 D3 78 */	mr r3, r26
/* 80980D8C  7F 64 DB 78 */	mr r4, r27
/* 80980D90  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80980D94  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80980D98  7D 89 03 A6 */	mtctr r12
/* 80980D9C  4E 80 04 21 */	bctrl 
/* 80980DA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80980DA4  40 82 00 0C */	bne lbl_80980DB0
/* 80980DA8  38 60 00 00 */	li r3, 0
/* 80980DAC  48 00 00 5C */	b lbl_80980E08
lbl_80980DB0:
/* 80980DB0  7F 43 D3 78 */	mr r3, r26
/* 80980DB4  38 80 00 00 */	li r4, 0
/* 80980DB8  C0 3F 05 78 */	lfs f1, 0x578(r31)
/* 80980DBC  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80980DC0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80980DC4  7D 89 03 A6 */	mtctr r12
/* 80980DC8  4E 80 04 21 */	bctrl 
/* 80980DCC  38 80 00 00 */	li r4, 0
/* 80980DD0  48 00 00 18 */	b lbl_80980DE8
lbl_80980DD4:
/* 80980DD4  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80980DD8  54 80 13 BA */	rlwinm r0, r4, 2, 0xe, 0x1d
/* 80980DDC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80980DE0  93 C3 00 04 */	stw r30, 4(r3)
/* 80980DE4  38 84 00 01 */	addi r4, r4, 1
lbl_80980DE8:
/* 80980DE8  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 80980DEC  A0 1C 00 2C */	lhz r0, 0x2c(r28)
/* 80980DF0  7C 03 00 40 */	cmplw r3, r0
/* 80980DF4  41 80 FF E0 */	blt lbl_80980DD4
/* 80980DF8  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80980DFC  80 63 00 04 */	lwz r3, 4(r3)
/* 80980E00  93 A3 00 14 */	stw r29, 0x14(r3)
/* 80980E04  38 60 00 01 */	li r3, 1
lbl_80980E08:
/* 80980E08  39 61 00 40 */	addi r11, r1, 0x40
/* 80980E0C  4B 9E 14 11 */	bl _restgpr_26
/* 80980E10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80980E14  7C 08 03 A6 */	mtlr r0
/* 80980E18  38 21 00 40 */	addi r1, r1, 0x40
/* 80980E1C  4E 80 00 20 */	blr 
