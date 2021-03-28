lbl_80B48864:
/* 80B48864  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B48868  7C 08 02 A6 */	mflr r0
/* 80B4886C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B48870  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B48874  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B48878  41 82 00 1C */	beq lbl_80B48894
/* 80B4887C  3C A0 80 B5 */	lis r5, __vt__13daNpcT_Path_c@ha
/* 80B48880  38 05 99 F0 */	addi r0, r5, __vt__13daNpcT_Path_c@l
/* 80B48884  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80B48888  7C 80 07 35 */	extsh. r0, r4
/* 80B4888C  40 81 00 08 */	ble lbl_80B48894
/* 80B48890  4B 78 64 AC */	b __dl__FPv
lbl_80B48894:
/* 80B48894  7F E3 FB 78 */	mr r3, r31
/* 80B48898  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4889C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B488A0  7C 08 03 A6 */	mtlr r0
/* 80B488A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B488A8  4E 80 00 20 */	blr 
