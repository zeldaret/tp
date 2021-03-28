lbl_807A602C:
/* 807A602C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A6030  7C 08 02 A6 */	mflr r0
/* 807A6034  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A6038  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807A603C  7C 7F 1B 79 */	or. r31, r3, r3
/* 807A6040  41 82 00 1C */	beq lbl_807A605C
/* 807A6044  3C A0 80 7A */	lis r5, __vt__8cM3dGAab@ha
/* 807A6048  38 05 6D 14 */	addi r0, r5, __vt__8cM3dGAab@l
/* 807A604C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 807A6050  7C 80 07 35 */	extsh. r0, r4
/* 807A6054  40 81 00 08 */	ble lbl_807A605C
/* 807A6058  4B B2 8C E4 */	b __dl__FPv
lbl_807A605C:
/* 807A605C  7F E3 FB 78 */	mr r3, r31
/* 807A6060  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807A6064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A6068  7C 08 03 A6 */	mtlr r0
/* 807A606C  38 21 00 10 */	addi r1, r1, 0x10
/* 807A6070  4E 80 00 20 */	blr 
