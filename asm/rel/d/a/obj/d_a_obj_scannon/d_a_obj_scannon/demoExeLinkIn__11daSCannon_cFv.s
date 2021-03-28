lbl_80CC8048:
/* 80CC8048  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CC804C  7C 08 02 A6 */	mflr r0
/* 80CC8050  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC8054  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CC8058  7C 7F 1B 78 */	mr r31, r3
/* 80CC805C  3C 60 80 CD */	lis r3, TKS_SET_POS@ha
/* 80CC8060  38 83 91 88 */	addi r4, r3, TKS_SET_POS@l
/* 80CC8064  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80CC8068  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80CC806C  40 82 00 88 */	bne lbl_80CC80F4
/* 80CC8070  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC8074  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC8078  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CC807C  28 03 00 00 */	cmplwi r3, 0
/* 80CC8080  41 82 00 60 */	beq lbl_80CC80E0
/* 80CC8084  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80CC8088  64 00 08 00 */	oris r0, r0, 0x800
/* 80CC808C  90 03 05 70 */	stw r0, 0x570(r3)
/* 80CC8090  80 03 05 78 */	lwz r0, 0x578(r3)
/* 80CC8094  60 00 04 00 */	ori r0, r0, 0x400
/* 80CC8098  90 03 05 78 */	stw r0, 0x578(r3)
/* 80CC809C  C0 04 00 6C */	lfs f0, 0x6c(r4)
/* 80CC80A0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CC80A4  C0 04 00 70 */	lfs f0, 0x70(r4)
/* 80CC80A8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CC80AC  C0 04 00 74 */	lfs f0, 0x74(r4)
/* 80CC80B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CC80B4  38 81 00 08 */	addi r4, r1, 8
/* 80CC80B8  A8 A3 04 E6 */	lha r5, 0x4e6(r3)
/* 80CC80BC  38 C0 00 00 */	li r6, 0
/* 80CC80C0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CC80C4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80CC80C8  7D 89 03 A6 */	mtctr r12
/* 80CC80CC  4E 80 04 21 */	bctrl 
/* 80CC80D0  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 80CC80D4  88 03 00 91 */	lbz r0, 0x91(r3)
/* 80CC80D8  60 00 00 04 */	ori r0, r0, 4
/* 80CC80DC  98 03 00 91 */	stb r0, 0x91(r3)
lbl_80CC80E0:
/* 80CC80E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC80E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC80E8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CC80EC  80 9F 06 04 */	lwz r4, 0x604(r31)
/* 80CC80F0  4B 38 00 8C */	b cutEnd__16dEvent_manager_cFi
lbl_80CC80F4:
/* 80CC80F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CC80F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CC80FC  7C 08 03 A6 */	mtlr r0
/* 80CC8100  38 21 00 20 */	addi r1, r1, 0x20
/* 80CC8104  4E 80 00 20 */	blr 
