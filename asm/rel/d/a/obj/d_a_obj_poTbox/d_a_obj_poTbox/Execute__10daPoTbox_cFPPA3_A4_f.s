lbl_80CB499C:
/* 80CB499C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB49A0  7C 08 02 A6 */	mflr r0
/* 80CB49A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB49A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB49AC  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB49B0  7C 7E 1B 78 */	mr r30, r3
/* 80CB49B4  7C 9F 23 78 */	mr r31, r4
/* 80CB49B8  3C 60 80 CB */	lis r3, cNullVec__6Z2Calc@ha
/* 80CB49BC  38 C3 4F EC */	addi r6, r3, cNullVec__6Z2Calc@l
/* 80CB49C0  3C 60 80 CB */	lis r3, data_80CB5140@ha
/* 80CB49C4  38 A3 51 40 */	addi r5, r3, data_80CB5140@l
/* 80CB49C8  88 05 00 00 */	lbz r0, 0(r5)
/* 80CB49CC  7C 00 07 75 */	extsb. r0, r0
/* 80CB49D0  40 82 00 70 */	bne lbl_80CB4A40
/* 80CB49D4  80 66 00 38 */	lwz r3, 0x38(r6)
/* 80CB49D8  80 06 00 3C */	lwz r0, 0x3c(r6)
/* 80CB49DC  90 66 00 68 */	stw r3, 0x68(r6)
/* 80CB49E0  90 06 00 6C */	stw r0, 0x6c(r6)
/* 80CB49E4  80 06 00 40 */	lwz r0, 0x40(r6)
/* 80CB49E8  90 06 00 70 */	stw r0, 0x70(r6)
/* 80CB49EC  38 86 00 68 */	addi r4, r6, 0x68
/* 80CB49F0  80 66 00 44 */	lwz r3, 0x44(r6)
/* 80CB49F4  80 06 00 48 */	lwz r0, 0x48(r6)
/* 80CB49F8  90 64 00 0C */	stw r3, 0xc(r4)
/* 80CB49FC  90 04 00 10 */	stw r0, 0x10(r4)
/* 80CB4A00  80 06 00 4C */	lwz r0, 0x4c(r6)
/* 80CB4A04  90 04 00 14 */	stw r0, 0x14(r4)
/* 80CB4A08  80 66 00 50 */	lwz r3, 0x50(r6)
/* 80CB4A0C  80 06 00 54 */	lwz r0, 0x54(r6)
/* 80CB4A10  90 64 00 18 */	stw r3, 0x18(r4)
/* 80CB4A14  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80CB4A18  80 06 00 58 */	lwz r0, 0x58(r6)
/* 80CB4A1C  90 04 00 20 */	stw r0, 0x20(r4)
/* 80CB4A20  80 66 00 5C */	lwz r3, 0x5c(r6)
/* 80CB4A24  80 06 00 60 */	lwz r0, 0x60(r6)
/* 80CB4A28  90 64 00 24 */	stw r3, 0x24(r4)
/* 80CB4A2C  90 04 00 28 */	stw r0, 0x28(r4)
/* 80CB4A30  80 06 00 64 */	lwz r0, 0x64(r6)
/* 80CB4A34  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80CB4A38  38 00 00 01 */	li r0, 1
/* 80CB4A3C  98 05 00 00 */	stb r0, 0(r5)
lbl_80CB4A40:
/* 80CB4A40  7F C3 F3 78 */	mr r3, r30
/* 80CB4A44  88 1E 06 04 */	lbz r0, 0x604(r30)
/* 80CB4A48  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CB4A4C  39 86 00 68 */	addi r12, r6, 0x68
/* 80CB4A50  7D 8C 02 14 */	add r12, r12, r0
/* 80CB4A54  4B 6A D6 30 */	b __ptmf_scall
/* 80CB4A58  60 00 00 00 */	nop 
/* 80CB4A5C  88 1E 06 05 */	lbz r0, 0x605(r30)
/* 80CB4A60  28 00 00 00 */	cmplwi r0, 0
/* 80CB4A64  40 82 00 14 */	bne lbl_80CB4A78
/* 80CB4A68  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CB4A6C  38 03 00 24 */	addi r0, r3, 0x24
/* 80CB4A70  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB4A74  48 00 00 10 */	b lbl_80CB4A84
lbl_80CB4A78:
/* 80CB4A78  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80CB4A7C  38 03 00 24 */	addi r0, r3, 0x24
/* 80CB4A80  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CB4A84:
/* 80CB4A84  7F C3 F3 78 */	mr r3, r30
/* 80CB4A88  4B FF F8 41 */	bl setBaseMtx__10daPoTbox_cFv
/* 80CB4A8C  38 60 00 01 */	li r3, 1
/* 80CB4A90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB4A94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB4A98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB4A9C  7C 08 03 A6 */	mtlr r0
/* 80CB4AA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB4AA4  4E 80 00 20 */	blr 
