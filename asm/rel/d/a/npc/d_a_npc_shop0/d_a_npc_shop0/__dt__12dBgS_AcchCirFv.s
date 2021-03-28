lbl_80AEAD6C:
/* 80AEAD6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEAD70  7C 08 02 A6 */	mflr r0
/* 80AEAD74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEAD78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEAD7C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AEAD80  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AEAD84  7C 9F 23 78 */	mr r31, r4
/* 80AEAD88  41 82 00 38 */	beq lbl_80AEADC0
/* 80AEAD8C  3C 60 80 AF */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80AEAD90  38 03 BD 54 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80AEAD94  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80AEAD98  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AEAD9C  38 80 FF FF */	li r4, -1
/* 80AEADA0  4B 78 41 78 */	b __dt__8cM3dGCirFv
/* 80AEADA4  7F C3 F3 78 */	mr r3, r30
/* 80AEADA8  38 80 00 00 */	li r4, 0
/* 80AEADAC  4B 77 D3 04 */	b __dt__13cBgS_PolyInfoFv
/* 80AEADB0  7F E0 07 35 */	extsh. r0, r31
/* 80AEADB4  40 81 00 0C */	ble lbl_80AEADC0
/* 80AEADB8  7F C3 F3 78 */	mr r3, r30
/* 80AEADBC  4B 7E 3F 80 */	b __dl__FPv
lbl_80AEADC0:
/* 80AEADC0  7F C3 F3 78 */	mr r3, r30
/* 80AEADC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEADC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AEADCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEADD0  7C 08 03 A6 */	mtlr r0
/* 80AEADD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEADD8  4E 80 00 20 */	blr 
