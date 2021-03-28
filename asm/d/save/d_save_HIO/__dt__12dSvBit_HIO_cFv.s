lbl_8025C6FC:
/* 8025C6FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025C700  7C 08 02 A6 */	mflr r0
/* 8025C704  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025C708  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025C70C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8025C710  41 82 01 4C */	beq lbl_8025C85C
/* 8025C714  3C 60 80 3C */	lis r3, __vt__12dSvBit_HIO_c@ha
/* 8025C718  38 03 33 B4 */	addi r0, r3, __vt__12dSvBit_HIO_c@l
/* 8025C71C  90 1F 00 00 */	stw r0, 0(r31)
/* 8025C720  34 1F 04 8C */	addic. r0, r31, 0x48c
/* 8025C724  41 82 00 10 */	beq lbl_8025C734
/* 8025C728  3C 60 80 3C */	lis r3, __vt__22dSvBit_childOtherHIO_c@ha
/* 8025C72C  38 03 33 00 */	addi r0, r3, __vt__22dSvBit_childOtherHIO_c@l
/* 8025C730  90 1F 04 8C */	stw r0, 0x48c(r31)
lbl_8025C734:
/* 8025C734  34 1F 04 7C */	addic. r0, r31, 0x47c
/* 8025C738  41 82 00 10 */	beq lbl_8025C748
/* 8025C73C  3C 60 80 3C */	lis r3, __vt__26dSvBit_childTransformHIO_c@ha
/* 8025C740  38 03 33 0C */	addi r0, r3, __vt__26dSvBit_childTransformHIO_c@l
/* 8025C744  90 1F 04 7C */	stw r0, 0x47c(r31)
lbl_8025C748:
/* 8025C748  34 1F 04 68 */	addic. r0, r31, 0x468
/* 8025C74C  41 82 00 10 */	beq lbl_8025C75C
/* 8025C750  3C 60 80 3C */	lis r3, __vt__25dSvBit_childDarknessHIO_c@ha
/* 8025C754  38 03 33 18 */	addi r0, r3, __vt__25dSvBit_childDarknessHIO_c@l
/* 8025C758  90 1F 04 68 */	stw r0, 0x468(r31)
lbl_8025C75C:
/* 8025C75C  34 1F 03 D8 */	addic. r0, r31, 0x3d8
/* 8025C760  41 82 00 24 */	beq lbl_8025C784
/* 8025C764  3C 60 80 3C */	lis r3, __vt__25dSvBit_childTreasureHIO_c@ha
/* 8025C768  38 03 33 90 */	addi r0, r3, __vt__25dSvBit_childTreasureHIO_c@l
/* 8025C76C  90 1F 03 D8 */	stw r0, 0x3d8(r31)
/* 8025C770  34 1F 03 E0 */	addic. r0, r31, 0x3e0
/* 8025C774  41 82 00 10 */	beq lbl_8025C784
/* 8025C778  3C 60 80 3C */	lis r3, __vt__29dSvBit_childTbPerfectionHIO_c@ha
/* 8025C77C  38 03 33 24 */	addi r0, r3, __vt__29dSvBit_childTbPerfectionHIO_c@l
/* 8025C780  90 1F 03 E0 */	stw r0, 0x3e0(r31)
lbl_8025C784:
/* 8025C784  34 1F 02 10 */	addic. r0, r31, 0x210
/* 8025C788  41 82 00 60 */	beq lbl_8025C7E8
/* 8025C78C  3C 60 80 3C */	lis r3, __vt__21dSvBit_childItemHIO_c@ha
/* 8025C790  38 03 33 9C */	addi r0, r3, __vt__21dSvBit_childItemHIO_c@l
/* 8025C794  90 1F 02 10 */	stw r0, 0x210(r31)
/* 8025C798  34 1F 03 B0 */	addic. r0, r31, 0x3b0
/* 8025C79C  41 82 00 10 */	beq lbl_8025C7AC
/* 8025C7A0  3C 60 80 3C */	lis r3, __vt__26dSvBit_childItOneZoneHIO_c@ha
/* 8025C7A4  38 03 33 30 */	addi r0, r3, __vt__26dSvBit_childItOneZoneHIO_c@l
/* 8025C7A8  90 1F 03 B0 */	stw r0, 0x3b0(r31)
lbl_8025C7AC:
/* 8025C7AC  34 1F 03 68 */	addic. r0, r31, 0x368
/* 8025C7B0  41 82 00 10 */	beq lbl_8025C7C0
/* 8025C7B4  3C 60 80 3C */	lis r3, __vt__23dSvBit_childItZoneHIO_c@ha
/* 8025C7B8  38 03 33 3C */	addi r0, r3, __vt__23dSvBit_childItZoneHIO_c@l
/* 8025C7BC  90 1F 03 68 */	stw r0, 0x368(r31)
lbl_8025C7C0:
/* 8025C7C0  34 1F 02 60 */	addic. r0, r31, 0x260
/* 8025C7C4  41 82 00 10 */	beq lbl_8025C7D4
/* 8025C7C8  3C 60 80 3C */	lis r3, __vt__26dSvBit_childItDungeonHIO_c@ha
/* 8025C7CC  38 03 33 48 */	addi r0, r3, __vt__26dSvBit_childItDungeonHIO_c@l
/* 8025C7D0  90 1F 02 60 */	stw r0, 0x260(r31)
lbl_8025C7D4:
/* 8025C7D4  34 1F 02 18 */	addic. r0, r31, 0x218
/* 8025C7D8  41 82 00 10 */	beq lbl_8025C7E8
/* 8025C7DC  3C 60 80 3C */	lis r3, __vt__29dSvBit_childItPerfectionHIO_c@ha
/* 8025C7E0  38 03 33 54 */	addi r0, r3, __vt__29dSvBit_childItPerfectionHIO_c@l
/* 8025C7E4  90 1F 02 18 */	stw r0, 0x218(r31)
lbl_8025C7E8:
/* 8025C7E8  34 1F 00 08 */	addic. r0, r31, 8
/* 8025C7EC  41 82 00 60 */	beq lbl_8025C84C
/* 8025C7F0  3C 60 80 3C */	lis r3, __vt__23dSvBit_childSwitchHIO_c@ha
/* 8025C7F4  38 03 33 A8 */	addi r0, r3, __vt__23dSvBit_childSwitchHIO_c@l
/* 8025C7F8  90 1F 00 08 */	stw r0, 8(r31)
/* 8025C7FC  34 1F 01 E8 */	addic. r0, r31, 0x1e8
/* 8025C800  41 82 00 10 */	beq lbl_8025C810
/* 8025C804  3C 60 80 3C */	lis r3, __vt__26dSvBit_childSwOneZoneHIO_c@ha
/* 8025C808  38 03 33 60 */	addi r0, r3, __vt__26dSvBit_childSwOneZoneHIO_c@l
/* 8025C80C  90 1F 01 E8 */	stw r0, 0x1e8(r31)
lbl_8025C810:
/* 8025C810  34 1F 01 A0 */	addic. r0, r31, 0x1a0
/* 8025C814  41 82 00 10 */	beq lbl_8025C824
/* 8025C818  3C 60 80 3C */	lis r3, __vt__23dSvBit_childSwZoneHIO_c@ha
/* 8025C81C  38 03 33 6C */	addi r0, r3, __vt__23dSvBit_childSwZoneHIO_c@l
/* 8025C820  90 1F 01 A0 */	stw r0, 0x1a0(r31)
lbl_8025C824:
/* 8025C824  34 1F 01 18 */	addic. r0, r31, 0x118
/* 8025C828  41 82 00 10 */	beq lbl_8025C838
/* 8025C82C  3C 60 80 3C */	lis r3, __vt__26dSvBit_childSwDungeonHIO_c@ha
/* 8025C830  38 03 33 78 */	addi r0, r3, __vt__26dSvBit_childSwDungeonHIO_c@l
/* 8025C834  90 1F 01 18 */	stw r0, 0x118(r31)
lbl_8025C838:
/* 8025C838  34 1F 00 10 */	addic. r0, r31, 0x10
/* 8025C83C  41 82 00 10 */	beq lbl_8025C84C
/* 8025C840  3C 60 80 3C */	lis r3, __vt__29dSvBit_childSwPerfectionHIO_c@ha
/* 8025C844  38 03 33 84 */	addi r0, r3, __vt__29dSvBit_childSwPerfectionHIO_c@l
/* 8025C848  90 1F 00 10 */	stw r0, 0x10(r31)
lbl_8025C84C:
/* 8025C84C  7C 80 07 35 */	extsh. r0, r4
/* 8025C850  40 81 00 0C */	ble lbl_8025C85C
/* 8025C854  7F E3 FB 78 */	mr r3, r31
/* 8025C858  48 07 24 E5 */	bl __dl__FPv
lbl_8025C85C:
/* 8025C85C  7F E3 FB 78 */	mr r3, r31
/* 8025C860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025C864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025C868  7C 08 03 A6 */	mtlr r0
/* 8025C86C  38 21 00 10 */	addi r1, r1, 0x10
/* 8025C870  4E 80 00 20 */	blr 
