lbl_80D4D928:
/* 80D4D928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4D92C  7C 08 02 A6 */	mflr r0
/* 80D4D930  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4D934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4D938  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D4D93C  41 82 00 44 */	beq lbl_80D4D980
/* 80D4D940  3C 60 80 D5 */	lis r3, __vt__21daStartAndGoal_Path_c@ha /* 0x80D4DF34@ha */
/* 80D4D944  38 03 DF 34 */	addi r0, r3, __vt__21daStartAndGoal_Path_c@l /* 0x80D4DF34@l */
/* 80D4D948  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80D4D94C  41 82 00 24 */	beq lbl_80D4D970
/* 80D4D950  3C 60 80 D5 */	lis r3, __vt__13daNpcF_Path_c@ha /* 0x80D4DF4C@ha */
/* 80D4D954  38 03 DF 4C */	addi r0, r3, __vt__13daNpcF_Path_c@l /* 0x80D4DF4C@l */
/* 80D4D958  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80D4D95C  34 1F 00 20 */	addic. r0, r31, 0x20
/* 80D4D960  41 82 00 10 */	beq lbl_80D4D970
/* 80D4D964  3C 60 80 D5 */	lis r3, __vt__16daNpcF_SPCurve_c@ha /* 0x80D4DF40@ha */
/* 80D4D968  38 03 DF 40 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l /* 0x80D4DF40@l */
/* 80D4D96C  90 1F 06 28 */	stw r0, 0x628(r31)
lbl_80D4D970:
/* 80D4D970  7C 80 07 35 */	extsh. r0, r4
/* 80D4D974  40 81 00 0C */	ble lbl_80D4D980
/* 80D4D978  7F E3 FB 78 */	mr r3, r31
/* 80D4D97C  4B 58 13 C1 */	bl __dl__FPv
lbl_80D4D980:
/* 80D4D980  7F E3 FB 78 */	mr r3, r31
/* 80D4D984  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4D988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4D98C  7C 08 03 A6 */	mtlr r0
/* 80D4D990  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4D994  4E 80 00 20 */	blr 
