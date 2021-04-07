lbl_80A39DBC:
/* 80A39DBC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A39DC0  7C 08 02 A6 */	mflr r0
/* 80A39DC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A39DC8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A39DCC  7C 7F 1B 78 */	mr r31, r3
/* 80A39DD0  81 83 0E 40 */	lwz r12, 0xe40(r3)
/* 80A39DD4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80A39DD8  7D 89 03 A6 */	mtctr r12
/* 80A39DDC  4E 80 04 21 */	bctrl 
/* 80A39DE0  2C 03 00 00 */	cmpwi r3, 0
/* 80A39DE4  41 80 00 9C */	blt lbl_80A39E80
/* 80A39DE8  C0 1F 0D 70 */	lfs f0, 0xd70(r31)
/* 80A39DEC  D0 1F 0D 88 */	stfs f0, 0xd88(r31)
/* 80A39DF0  C0 1F 0D 74 */	lfs f0, 0xd74(r31)
/* 80A39DF4  D0 1F 0D 8C */	stfs f0, 0xd8c(r31)
/* 80A39DF8  C0 1F 0D 78 */	lfs f0, 0xd78(r31)
/* 80A39DFC  D0 1F 0D 90 */	stfs f0, 0xd90(r31)
/* 80A39E00  7F E3 FB 78 */	mr r3, r31
/* 80A39E04  81 9F 0E 40 */	lwz r12, 0xe40(r31)
/* 80A39E08  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80A39E0C  7D 89 03 A6 */	mtctr r12
/* 80A39E10  4E 80 04 21 */	bctrl 
/* 80A39E14  80 9F 05 BC */	lwz r4, 0x5bc(r31)
/* 80A39E18  80 84 00 04 */	lwz r4, 4(r4)
/* 80A39E1C  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80A39E20  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80A39E24  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80A39E28  7C 64 02 14 */	add r3, r4, r0
/* 80A39E2C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A39E30  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A39E34  4B 90 C6 7D */	bl PSMTXCopy
/* 80A39E38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A39E3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A39E40  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A39E44  D0 1F 0D 58 */	stfs f0, 0xd58(r31)
/* 80A39E48  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A39E4C  D0 1F 0D 5C */	stfs f0, 0xd5c(r31)
/* 80A39E50  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80A39E54  D0 1F 0D 60 */	stfs f0, 0xd60(r31)
/* 80A39E58  38 61 00 14 */	addi r3, r1, 0x14
/* 80A39E5C  38 9F 0D 58 */	addi r4, r31, 0xd58
/* 80A39E60  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80A39E64  4B 82 CC D1 */	bl __mi__4cXyzCFRC3Vec
/* 80A39E68  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A39E6C  D0 1F 0D 70 */	stfs f0, 0xd70(r31)
/* 80A39E70  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A39E74  D0 1F 0D 74 */	stfs f0, 0xd74(r31)
/* 80A39E78  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A39E7C  D0 1F 0D 78 */	stfs f0, 0xd78(r31)
lbl_80A39E80:
/* 80A39E80  7F E3 FB 78 */	mr r3, r31
/* 80A39E84  81 9F 0E 40 */	lwz r12, 0xe40(r31)
/* 80A39E88  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80A39E8C  7D 89 03 A6 */	mtctr r12
/* 80A39E90  4E 80 04 21 */	bctrl 
/* 80A39E94  2C 03 00 00 */	cmpwi r3, 0
/* 80A39E98  41 80 00 9C */	blt lbl_80A39F34
/* 80A39E9C  C0 1F 0D 7C */	lfs f0, 0xd7c(r31)
/* 80A39EA0  D0 1F 0D 94 */	stfs f0, 0xd94(r31)
/* 80A39EA4  C0 1F 0D 80 */	lfs f0, 0xd80(r31)
/* 80A39EA8  D0 1F 0D 98 */	stfs f0, 0xd98(r31)
/* 80A39EAC  C0 1F 0D 84 */	lfs f0, 0xd84(r31)
/* 80A39EB0  D0 1F 0D 9C */	stfs f0, 0xd9c(r31)
/* 80A39EB4  7F E3 FB 78 */	mr r3, r31
/* 80A39EB8  81 9F 0E 40 */	lwz r12, 0xe40(r31)
/* 80A39EBC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80A39EC0  7D 89 03 A6 */	mtctr r12
/* 80A39EC4  4E 80 04 21 */	bctrl 
/* 80A39EC8  80 9F 05 BC */	lwz r4, 0x5bc(r31)
/* 80A39ECC  80 84 00 04 */	lwz r4, 4(r4)
/* 80A39ED0  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80A39ED4  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80A39ED8  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80A39EDC  7C 64 02 14 */	add r3, r4, r0
/* 80A39EE0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A39EE4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A39EE8  4B 90 C5 C9 */	bl PSMTXCopy
/* 80A39EEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A39EF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A39EF4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A39EF8  D0 1F 0D 64 */	stfs f0, 0xd64(r31)
/* 80A39EFC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A39F00  D0 1F 0D 68 */	stfs f0, 0xd68(r31)
/* 80A39F04  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80A39F08  D0 1F 0D 6C */	stfs f0, 0xd6c(r31)
/* 80A39F0C  38 61 00 08 */	addi r3, r1, 8
/* 80A39F10  38 9F 0D 64 */	addi r4, r31, 0xd64
/* 80A39F14  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80A39F18  4B 82 CC 1D */	bl __mi__4cXyzCFRC3Vec
/* 80A39F1C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80A39F20  D0 1F 0D 7C */	stfs f0, 0xd7c(r31)
/* 80A39F24  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A39F28  D0 1F 0D 80 */	stfs f0, 0xd80(r31)
/* 80A39F2C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A39F30  D0 1F 0D 84 */	stfs f0, 0xd84(r31)
lbl_80A39F34:
/* 80A39F34  88 1F 0A BC */	lbz r0, 0xabc(r31)
/* 80A39F38  28 00 00 00 */	cmplwi r0, 0
/* 80A39F3C  41 82 00 34 */	beq lbl_80A39F70
/* 80A39F40  C0 1F 0D 70 */	lfs f0, 0xd70(r31)
/* 80A39F44  D0 1F 0D 88 */	stfs f0, 0xd88(r31)
/* 80A39F48  C0 1F 0D 74 */	lfs f0, 0xd74(r31)
/* 80A39F4C  D0 1F 0D 8C */	stfs f0, 0xd8c(r31)
/* 80A39F50  C0 1F 0D 78 */	lfs f0, 0xd78(r31)
/* 80A39F54  D0 1F 0D 90 */	stfs f0, 0xd90(r31)
/* 80A39F58  C0 1F 0D 7C */	lfs f0, 0xd7c(r31)
/* 80A39F5C  D0 1F 0D 94 */	stfs f0, 0xd94(r31)
/* 80A39F60  C0 1F 0D 80 */	lfs f0, 0xd80(r31)
/* 80A39F64  D0 1F 0D 98 */	stfs f0, 0xd98(r31)
/* 80A39F68  C0 1F 0D 84 */	lfs f0, 0xd84(r31)
/* 80A39F6C  D0 1F 0D 9C */	stfs f0, 0xd9c(r31)
lbl_80A39F70:
/* 80A39F70  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A39F74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A39F78  7C 08 03 A6 */	mtlr r0
/* 80A39F7C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A39F80  4E 80 00 20 */	blr 
