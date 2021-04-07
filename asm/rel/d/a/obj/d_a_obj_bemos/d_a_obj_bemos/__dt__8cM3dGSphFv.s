lbl_80BB3210:
/* 80BB3210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB3214  7C 08 02 A6 */	mflr r0
/* 80BB3218  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB321C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB3220  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BB3224  41 82 00 1C */	beq lbl_80BB3240
/* 80BB3228  3C A0 80 BB */	lis r5, __vt__8cM3dGSph@ha /* 0x80BB3E04@ha */
/* 80BB322C  38 05 3E 04 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80BB3E04@l */
/* 80BB3230  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BB3234  7C 80 07 35 */	extsh. r0, r4
/* 80BB3238  40 81 00 08 */	ble lbl_80BB3240
/* 80BB323C  4B 71 BB 01 */	bl __dl__FPv
lbl_80BB3240:
/* 80BB3240  7F E3 FB 78 */	mr r3, r31
/* 80BB3244  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB3248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB324C  7C 08 03 A6 */	mtlr r0
/* 80BB3250  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB3254  4E 80 00 20 */	blr 
