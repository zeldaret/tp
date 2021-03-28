lbl_809D0E9C:
/* 809D0E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D0EA0  7C 08 02 A6 */	mflr r0
/* 809D0EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D0EA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D0EAC  7C 7F 1B 78 */	mr r31, r3
/* 809D0EB0  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 809D0EB4  28 00 00 00 */	cmplwi r0, 0
/* 809D0EB8  41 82 00 AC */	beq lbl_809D0F64
/* 809D0EBC  38 C0 00 00 */	li r6, 0
/* 809D0EC0  3C 80 80 9D */	lis r4, l_btkGetParamList@ha
/* 809D0EC4  84 A4 3C BC */	lwzu r5, l_btkGetParamList@l(r4)
/* 809D0EC8  2C 05 00 00 */	cmpwi r5, 0
/* 809D0ECC  41 80 00 20 */	blt lbl_809D0EEC
/* 809D0ED0  80 04 00 04 */	lwz r0, 4(r4)
/* 809D0ED4  54 00 10 3A */	slwi r0, r0, 2
/* 809D0ED8  3C 80 80 9D */	lis r4, l_resNames@ha
/* 809D0EDC  38 84 3C FC */	addi r4, r4, l_resNames@l
/* 809D0EE0  7C 84 00 2E */	lwzx r4, r4, r0
/* 809D0EE4  4B 78 1C C0 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 809D0EE8  7C 66 1B 78 */	mr r6, r3
lbl_809D0EEC:
/* 809D0EEC  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 809D0EF0  7C 06 00 40 */	cmplw r6, r0
/* 809D0EF4  40 82 00 64 */	bne lbl_809D0F58
/* 809D0EF8  A8 1F 08 FE */	lha r0, 0x8fe(r31)
/* 809D0EFC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809D0F00  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 809D0F04  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 809D0F08  7C 04 04 2E */	lfsx f0, r4, r0
/* 809D0F0C  3C 60 80 9D */	lis r3, lit_4710@ha
/* 809D0F10  C0 43 3A 94 */	lfs f2, lit_4710@l(r3)
/* 809D0F14  3C 60 80 9D */	lis r3, lit_4711@ha
/* 809D0F18  C0 23 3A 98 */	lfs f1, lit_4711@l(r3)
/* 809D0F1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 809D0F20  EC 02 00 32 */	fmuls f0, f2, f0
/* 809D0F24  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809D0F28  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 809D0F2C  A8 1F 08 FC */	lha r0, 0x8fc(r31)
/* 809D0F30  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809D0F34  7C 04 04 2E */	lfsx f0, r4, r0
/* 809D0F38  EC 01 00 32 */	fmuls f0, f1, f0
/* 809D0F3C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809D0F40  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 809D0F44  38 00 00 01 */	li r0, 1
/* 809D0F48  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809D0F4C  98 03 01 04 */	stb r0, 0x104(r3)
/* 809D0F50  38 60 00 01 */	li r3, 1
/* 809D0F54  48 00 00 14 */	b lbl_809D0F68
lbl_809D0F58:
/* 809D0F58  38 00 00 00 */	li r0, 0
/* 809D0F5C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809D0F60  98 03 01 04 */	stb r0, 0x104(r3)
lbl_809D0F64:
/* 809D0F64  38 60 00 00 */	li r3, 0
lbl_809D0F68:
/* 809D0F68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D0F6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D0F70  7C 08 03 A6 */	mtlr r0
/* 809D0F74  38 21 00 10 */	addi r1, r1, 0x10
/* 809D0F78  4E 80 00 20 */	blr 
