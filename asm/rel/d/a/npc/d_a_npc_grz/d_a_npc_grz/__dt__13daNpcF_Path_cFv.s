lbl_809EE860:
/* 809EE860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EE864  7C 08 02 A6 */	mflr r0
/* 809EE868  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EE86C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809EE870  7C 7F 1B 79 */	or. r31, r3, r3
/* 809EE874  41 82 00 34 */	beq lbl_809EE8A8
/* 809EE878  3C 60 80 9F */	lis r3, __vt__13daNpcF_Path_c@ha
/* 809EE87C  38 03 FB DC */	addi r0, r3, __vt__13daNpcF_Path_c@l
/* 809EE880  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 809EE884  34 1F 00 20 */	addic. r0, r31, 0x20
/* 809EE888  41 82 00 10 */	beq lbl_809EE898
/* 809EE88C  3C 60 80 9F */	lis r3, __vt__16daNpcF_SPCurve_c@ha
/* 809EE890  38 03 FB D0 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l
/* 809EE894  90 1F 06 28 */	stw r0, 0x628(r31)
lbl_809EE898:
/* 809EE898  7C 80 07 35 */	extsh. r0, r4
/* 809EE89C  40 81 00 0C */	ble lbl_809EE8A8
/* 809EE8A0  7F E3 FB 78 */	mr r3, r31
/* 809EE8A4  4B 8E 04 98 */	b __dl__FPv
lbl_809EE8A8:
/* 809EE8A8  7F E3 FB 78 */	mr r3, r31
/* 809EE8AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809EE8B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EE8B4  7C 08 03 A6 */	mtlr r0
/* 809EE8B8  38 21 00 10 */	addi r1, r1, 0x10
/* 809EE8BC  4E 80 00 20 */	blr 
