lbl_8045C444:
/* 8045C444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045C448  7C 08 02 A6 */	mflr r0
/* 8045C44C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045C450  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045C454  7C 7F 1B 79 */	or. r31, r3, r3
/* 8045C458  41 82 00 1C */	beq lbl_8045C474
/* 8045C45C  3C A0 80 46 */	lis r5, __vt__8cM3dGCyl@ha /* 0x8045CDB4@ha */
/* 8045C460  38 05 CD B4 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x8045CDB4@l */
/* 8045C464  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8045C468  7C 80 07 35 */	extsh. r0, r4
/* 8045C46C  40 81 00 08 */	ble lbl_8045C474
/* 8045C470  4B E7 28 CD */	bl __dl__FPv
lbl_8045C474:
/* 8045C474  7F E3 FB 78 */	mr r3, r31
/* 8045C478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045C47C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045C480  7C 08 03 A6 */	mtlr r0
/* 8045C484  38 21 00 10 */	addi r1, r1, 0x10
/* 8045C488  4E 80 00 20 */	blr 
