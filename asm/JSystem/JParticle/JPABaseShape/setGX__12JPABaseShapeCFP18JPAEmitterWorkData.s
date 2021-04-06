lbl_8027A7E8:
/* 8027A7E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027A7EC  7C 08 02 A6 */	mflr r0
/* 8027A7F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027A7F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8027A7F8  48 0E 79 E1 */	bl _savegpr_28
/* 8027A7FC  7C 7C 1B 78 */	mr r28, r3
/* 8027A800  3C 60 80 3C */	lis r3, jpa_dl@ha /* 0x803C42E0@ha */
/* 8027A804  3B E3 42 E0 */	addi r31, r3, jpa_dl@l /* 0x803C42E0@l */
/* 8027A808  80 9C 00 00 */	lwz r4, 0(r28)
/* 8027A80C  80 64 00 08 */	lwz r3, 8(r4)
/* 8027A810  54 60 AE 76 */	rlwinm r0, r3, 0x15, 0x19, 0x1b
/* 8027A814  3B DF 01 24 */	addi r30, r31, 0x124
/* 8027A818  7F DE 02 14 */	add r30, r30, r0
/* 8027A81C  54 60 96 F6 */	rlwinm r0, r3, 0x12, 0x1b, 0x1b
/* 8027A820  3B BF 01 84 */	addi r29, r31, 0x184
/* 8027A824  7F BD 02 14 */	add r29, r29, r0
/* 8027A828  A0 C4 00 18 */	lhz r6, 0x18(r4)
/* 8027A82C  54 C0 17 3A */	rlwinm r0, r6, 2, 0x1c, 0x1d
/* 8027A830  38 7F 00 80 */	addi r3, r31, 0x80
/* 8027A834  7C 63 00 2E */	lwzx r3, r3, r0
/* 8027A838  54 C0 06 BA */	rlwinm r0, r6, 0, 0x1a, 0x1d
/* 8027A83C  38 BF 00 8C */	addi r5, r31, 0x8c
/* 8027A840  7C 85 00 2E */	lwzx r4, r5, r0
/* 8027A844  54 C0 E6 BA */	rlwinm r0, r6, 0x1c, 0x1a, 0x1d
/* 8027A848  7C A5 00 2E */	lwzx r5, r5, r0
/* 8027A84C  54 C0 C6 BA */	rlwinm r0, r6, 0x18, 0x1a, 0x1d
/* 8027A850  38 DF 00 B4 */	addi r6, r31, 0xb4
/* 8027A854  7C C6 00 2E */	lwzx r6, r6, r0
/* 8027A858  48 0E 53 99 */	bl GXSetBlendMode
/* 8027A85C  80 7C 00 00 */	lwz r3, 0(r28)
/* 8027A860  88 A3 00 1D */	lbz r5, 0x1d(r3)
/* 8027A864  54 A3 07 FE */	clrlwi r3, r5, 0x1f
/* 8027A868  54 A0 0E FA */	rlwinm r0, r5, 1, 0x1b, 0x1d
/* 8027A86C  38 9F 00 F4 */	addi r4, r31, 0xf4
/* 8027A870  7C 84 00 2E */	lwzx r4, r4, r0
/* 8027A874  54 A5 E7 FE */	rlwinm r5, r5, 0x1c, 0x1f, 0x1f
/* 8027A878  48 0E 54 25 */	bl GXSetZMode
/* 8027A87C  80 FC 00 00 */	lwz r7, 0(r28)
/* 8027A880  89 07 00 1A */	lbz r8, 0x1a(r7)
/* 8027A884  55 00 16 FA */	rlwinm r0, r8, 2, 0x1b, 0x1d
/* 8027A888  38 DF 00 F4 */	addi r6, r31, 0xf4
/* 8027A88C  7C 66 00 2E */	lwzx r3, r6, r0
/* 8027A890  88 87 00 1B */	lbz r4, 0x1b(r7)
/* 8027A894  55 00 FF 3A */	rlwinm r0, r8, 0x1f, 0x1c, 0x1d
/* 8027A898  38 BF 01 14 */	addi r5, r31, 0x114
/* 8027A89C  7C A5 00 2E */	lwzx r5, r5, r0
/* 8027A8A0  55 00 EE FA */	rlwinm r0, r8, 0x1d, 0x1b, 0x1d
/* 8027A8A4  7C C6 00 2E */	lwzx r6, r6, r0
/* 8027A8A8  88 E7 00 1C */	lbz r7, 0x1c(r7)
/* 8027A8AC  48 0E 4D 79 */	bl GXSetAlphaCompare
/* 8027A8B0  38 60 00 00 */	li r3, 0
/* 8027A8B4  80 9E 00 00 */	lwz r4, 0(r30)
/* 8027A8B8  80 BE 00 04 */	lwz r5, 4(r30)
/* 8027A8BC  80 DE 00 08 */	lwz r6, 8(r30)
/* 8027A8C0  80 FE 00 0C */	lwz r7, 0xc(r30)
/* 8027A8C4  48 0E 49 61 */	bl GXSetTevColorIn
/* 8027A8C8  38 60 00 00 */	li r3, 0
/* 8027A8CC  80 9D 00 00 */	lwz r4, 0(r29)
/* 8027A8D0  80 BD 00 04 */	lwz r5, 4(r29)
/* 8027A8D4  80 DD 00 08 */	lwz r6, 8(r29)
/* 8027A8D8  80 FD 00 0C */	lwz r7, 0xc(r29)
/* 8027A8DC  48 0E 49 8D */	bl GXSetTevAlphaIn
/* 8027A8E0  38 60 00 00 */	li r3, 0
/* 8027A8E4  48 0E 48 15 */	bl GXSetTevDirect
/* 8027A8E8  38 60 00 01 */	li r3, 1
/* 8027A8EC  48 0E 48 0D */	bl GXSetTevDirect
/* 8027A8F0  80 7C 00 00 */	lwz r3, 0(r28)
/* 8027A8F4  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 8027A8F8  54 03 DF FE */	rlwinm r3, r0, 0x1b, 0x1f, 0x1f
/* 8027A8FC  48 0E 53 D5 */	bl GXSetZCompLoc
/* 8027A900  39 61 00 20 */	addi r11, r1, 0x20
/* 8027A904  48 0E 79 21 */	bl _restgpr_28
/* 8027A908  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027A90C  7C 08 03 A6 */	mtlr r0
/* 8027A910  38 21 00 20 */	addi r1, r1, 0x20
/* 8027A914  4E 80 00 20 */	blr 
