lbl_800D618C:
/* 800D618C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D6190  7C 08 02 A6 */	mflr r0
/* 800D6194  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D6198  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D619C  93 C1 00 08 */	stw r30, 8(r1)
/* 800D61A0  7C 7E 1B 78 */	mr r30, r3
/* 800D61A4  80 03 05 88 */	lwz r0, 0x588(r3)
/* 800D61A8  64 00 08 00 */	oris r0, r0, 0x800
/* 800D61AC  90 03 05 88 */	stw r0, 0x588(r3)
/* 800D61B0  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800D61B4  7F E3 FB 78 */	mr r3, r31
/* 800D61B8  48 08 83 15 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800D61BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D61C0  41 82 00 38 */	beq lbl_800D61F8
/* 800D61C4  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 800D61C8  28 00 00 53 */	cmplwi r0, 0x53
/* 800D61CC  40 82 00 1C */	bne lbl_800D61E8
/* 800D61D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D61D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D61D8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800D61DC  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 800D61E0  4B F7 1F 9D */	bl cutEnd__16dEvent_manager_cFi
/* 800D61E4  48 00 00 38 */	b lbl_800D621C
lbl_800D61E8:
/* 800D61E8  7F C3 F3 78 */	mr r3, r30
/* 800D61EC  38 80 00 00 */	li r4, 0
/* 800D61F0  4B FE 3E E1 */	bl checkNextAction__9daAlink_cFi
/* 800D61F4  48 00 00 28 */	b lbl_800D621C
lbl_800D61F8:
/* 800D61F8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D61FC  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutHead_c0@ha /* 0x8038DDB8@ha */
/* 800D6200  38 63 DD B8 */	addi r3, r3, m__21daAlinkHIO_cutHead_c0@l /* 0x8038DDB8@l */
/* 800D6204  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 800D6208  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D620C  40 81 00 10 */	ble lbl_800D621C
/* 800D6210  7F C3 F3 78 */	mr r3, r30
/* 800D6214  38 80 00 01 */	li r4, 1
/* 800D6218  4B FE 3E B9 */	bl checkNextAction__9daAlink_cFi
lbl_800D621C:
/* 800D621C  38 60 00 01 */	li r3, 1
/* 800D6220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D6224  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D6228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D622C  7C 08 03 A6 */	mtlr r0
/* 800D6230  38 21 00 10 */	addi r1, r1, 0x10
/* 800D6234  4E 80 00 20 */	blr 
