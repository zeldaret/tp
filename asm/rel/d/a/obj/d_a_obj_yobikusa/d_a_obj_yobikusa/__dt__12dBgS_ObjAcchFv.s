lbl_8059D040:
/* 8059D040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059D044  7C 08 02 A6 */	mflr r0
/* 8059D048  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059D04C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059D050  93 C1 00 08 */	stw r30, 8(r1)
/* 8059D054  7C 7E 1B 79 */	or. r30, r3, r3
/* 8059D058  7C 9F 23 78 */	mr r31, r4
/* 8059D05C  41 82 00 38 */	beq lbl_8059D094
/* 8059D060  3C 80 80 5A */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x8059E0AC@ha */
/* 8059D064  38 84 E0 AC */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x8059E0AC@l */
/* 8059D068  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8059D06C  38 04 00 0C */	addi r0, r4, 0xc
/* 8059D070  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8059D074  38 04 00 18 */	addi r0, r4, 0x18
/* 8059D078  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8059D07C  38 80 00 00 */	li r4, 0
/* 8059D080  4B AD 8F 15 */	bl __dt__9dBgS_AcchFv
/* 8059D084  7F E0 07 35 */	extsh. r0, r31
/* 8059D088  40 81 00 0C */	ble lbl_8059D094
/* 8059D08C  7F C3 F3 78 */	mr r3, r30
/* 8059D090  4B D3 1C AD */	bl __dl__FPv
lbl_8059D094:
/* 8059D094  7F C3 F3 78 */	mr r3, r30
/* 8059D098  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059D09C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059D0A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059D0A4  7C 08 03 A6 */	mtlr r0
/* 8059D0A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8059D0AC  4E 80 00 20 */	blr 
