lbl_80CA415C:
/* 80CA415C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA4160  7C 08 02 A6 */	mflr r0
/* 80CA4164  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA4168  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA416C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA4170  41 82 00 1C */	beq lbl_80CA418C
/* 80CA4174  3C A0 80 CA */	lis r5, __vt__8cM3dGSph@ha /* 0x80CA4AA0@ha */
/* 80CA4178  38 05 4A A0 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80CA4AA0@l */
/* 80CA417C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80CA4180  7C 80 07 35 */	extsh. r0, r4
/* 80CA4184  40 81 00 08 */	ble lbl_80CA418C
/* 80CA4188  4B 62 AB B5 */	bl __dl__FPv
lbl_80CA418C:
/* 80CA418C  7F E3 FB 78 */	mr r3, r31
/* 80CA4190  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA4194  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA4198  7C 08 03 A6 */	mtlr r0
/* 80CA419C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA41A0  4E 80 00 20 */	blr 
