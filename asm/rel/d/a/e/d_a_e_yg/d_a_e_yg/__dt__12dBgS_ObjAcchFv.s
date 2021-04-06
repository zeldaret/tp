lbl_807FC040:
/* 807FC040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807FC044  7C 08 02 A6 */	mflr r0
/* 807FC048  90 01 00 14 */	stw r0, 0x14(r1)
/* 807FC04C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807FC050  93 C1 00 08 */	stw r30, 8(r1)
/* 807FC054  7C 7E 1B 79 */	or. r30, r3, r3
/* 807FC058  7C 9F 23 78 */	mr r31, r4
/* 807FC05C  41 82 00 38 */	beq lbl_807FC094
/* 807FC060  3C 80 80 80 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x807FCFE8@ha */
/* 807FC064  38 84 CF E8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x807FCFE8@l */
/* 807FC068  90 9E 00 10 */	stw r4, 0x10(r30)
/* 807FC06C  38 04 00 0C */	addi r0, r4, 0xc
/* 807FC070  90 1E 00 14 */	stw r0, 0x14(r30)
/* 807FC074  38 04 00 18 */	addi r0, r4, 0x18
/* 807FC078  90 1E 00 24 */	stw r0, 0x24(r30)
/* 807FC07C  38 80 00 00 */	li r4, 0
/* 807FC080  4B 87 9F 15 */	bl __dt__9dBgS_AcchFv
/* 807FC084  7F E0 07 35 */	extsh. r0, r31
/* 807FC088  40 81 00 0C */	ble lbl_807FC094
/* 807FC08C  7F C3 F3 78 */	mr r3, r30
/* 807FC090  4B AD 2C AD */	bl __dl__FPv
lbl_807FC094:
/* 807FC094  7F C3 F3 78 */	mr r3, r30
/* 807FC098  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807FC09C  83 C1 00 08 */	lwz r30, 8(r1)
/* 807FC0A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807FC0A4  7C 08 03 A6 */	mtlr r0
/* 807FC0A8  38 21 00 10 */	addi r1, r1, 0x10
/* 807FC0AC  4E 80 00 20 */	blr 
