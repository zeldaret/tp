lbl_800FAE14:
/* 800FAE14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FAE18  7C 08 02 A6 */	mflr r0
/* 800FAE1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FAE20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FAE24  93 C1 00 08 */	stw r30, 8(r1)
/* 800FAE28  7C 7E 1B 78 */	mr r30, r3
/* 800FAE2C  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800FAE30  4B FF F9 5D */	bl changeHangEndProc__9daAlink_cFv
/* 800FAE34  2C 03 00 00 */	cmpwi r3, 0
/* 800FAE38  41 82 00 0C */	beq lbl_800FAE44
/* 800FAE3C  38 60 00 01 */	li r3, 1
/* 800FAE40  48 00 00 74 */	b lbl_800FAEB4
lbl_800FAE44:
/* 800FAE44  7F E3 FB 78 */	mr r3, r31
/* 800FAE48  48 06 36 85 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FAE4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FAE50  41 82 00 10 */	beq lbl_800FAE60
/* 800FAE54  7F C3 F3 78 */	mr r3, r30
/* 800FAE58  48 00 05 E5 */	bl procHangWaitInit__9daAlink_cFv
/* 800FAE5C  48 00 00 54 */	b lbl_800FAEB0
lbl_800FAE60:
/* 800FAE60  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800FAE64  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 800FAE68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FAE6C  40 81 00 44 */	ble lbl_800FAEB0
/* 800FAE70  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800FAE74  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800FAE78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FAE7C  40 81 00 34 */	ble lbl_800FAEB0
/* 800FAE80  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800FAE84  A8 1E 2F E2 */	lha r0, 0x2fe2(r30)
/* 800FAE88  7C 03 00 50 */	subf r0, r3, r0
/* 800FAE8C  7C 03 07 34 */	extsh r3, r0
/* 800FAE90  4B FB 86 05 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800FAE94  2C 03 00 00 */	cmpwi r3, 0
/* 800FAE98  40 82 00 18 */	bne lbl_800FAEB0
/* 800FAE9C  7F C3 F3 78 */	mr r3, r30
/* 800FAEA0  3C 80 80 39 */	lis r4, m__23daAlinkHIO_wallCatch_c0@ha /* 0x8038E164@ha */
/* 800FAEA4  38 84 E1 64 */	addi r4, r4, m__23daAlinkHIO_wallCatch_c0@l /* 0x8038E164@l */
/* 800FAEA8  C0 24 00 30 */	lfs f1, 0x30(r4)
/* 800FAEAC  48 00 0D 1D */	bl procHangClimbInit__9daAlink_cFf
lbl_800FAEB0:
/* 800FAEB0  38 60 00 01 */	li r3, 1
lbl_800FAEB4:
/* 800FAEB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FAEB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FAEBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FAEC0  7C 08 03 A6 */	mtlr r0
/* 800FAEC4  38 21 00 10 */	addi r1, r1, 0x10
/* 800FAEC8  4E 80 00 20 */	blr 
