lbl_80018B64:
/* 80018B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018B68  7C 08 02 A6 */	mflr r0
/* 80018B6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018B70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80018B74  93 C1 00 08 */	stw r30, 8(r1)
/* 80018B78  7C 7E 1B 78 */	mr r30, r3
/* 80018B7C  38 7E 00 F4 */	addi r3, r30, 0xf4
/* 80018B80  48 02 A8 71 */	bl __ct__11dEvt_info_cFv
/* 80018B84  3B FE 01 0C */	addi r31, r30, 0x10c
/* 80018B88  7F E3 FB 78 */	mr r3, r31
/* 80018B8C  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha /* 0x803A1EC8@ha */
/* 80018B90  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l /* 0x803A1EC8@l */
/* 80018B94  48 30 CB 31 */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 80018B98  38 7F 00 74 */	addi r3, r31, 0x74
/* 80018B9C  3C 80 80 02 */	lis r4, __ct__11J3DLightObjFv@ha /* 0x80018C0C@ha */
/* 80018BA0  38 84 8C 0C */	addi r4, r4, __ct__11J3DLightObjFv@l /* 0x80018C0C@l */
/* 80018BA4  38 A0 00 00 */	li r5, 0
/* 80018BA8  38 C0 00 74 */	li r6, 0x74
/* 80018BAC  38 E0 00 06 */	li r7, 6
/* 80018BB0  48 34 91 B1 */	bl __construct_array
/* 80018BB4  7F C3 F3 78 */	mr r3, r30
/* 80018BB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80018BBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80018BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018BC4  7C 08 03 A6 */	mtlr r0
/* 80018BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80018BCC  4E 80 00 20 */	blr 
