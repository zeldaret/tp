lbl_80D5D744:
/* 80D5D744  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5D748  7C 08 02 A6 */	mflr r0
/* 80D5D74C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5D750  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5D754  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D5D758  41 82 00 1C */	beq lbl_80D5D774
/* 80D5D75C  3C A0 80 D6 */	lis r5, __vt__8cM3dGAab@ha /* 0x80D5D9B0@ha */
/* 80D5D760  38 05 D9 B0 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80D5D9B0@l */
/* 80D5D764  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D5D768  7C 80 07 35 */	extsh. r0, r4
/* 80D5D76C  40 81 00 08 */	ble lbl_80D5D774
/* 80D5D770  4B 57 15 CD */	bl __dl__FPv
lbl_80D5D774:
/* 80D5D774  7F E3 FB 78 */	mr r3, r31
/* 80D5D778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5D77C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5D780  7C 08 03 A6 */	mtlr r0
/* 80D5D784  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5D788  4E 80 00 20 */	blr 
