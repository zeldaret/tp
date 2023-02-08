lbl_802AA7DC:
/* 802AA7DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AA7E0  7C 08 02 A6 */	mflr r0
/* 802AA7E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AA7E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AA7EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802AA7F0  7C 7E 1B 78 */	mr r30, r3
/* 802AA7F4  7C 9F 23 78 */	mr r31, r4
/* 802AA7F8  80 04 00 00 */	lwz r0, 0(r4)
/* 802AA7FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 802AA800  38 7E 00 04 */	addi r3, r30, 4
/* 802AA804  38 81 00 10 */	addi r4, r1, 0x10
/* 802AA808  4B FF 5A ED */	bl stopSoundID__8JAISeMgrF10JAISoundID
/* 802AA80C  80 1F 00 00 */	lwz r0, 0(r31)
/* 802AA810  90 01 00 0C */	stw r0, 0xc(r1)
/* 802AA814  38 7E 07 28 */	addi r3, r30, 0x728
/* 802AA818  38 81 00 0C */	addi r4, r1, 0xc
/* 802AA81C  4B FF 76 71 */	bl stopSoundID__9JAISeqMgrF10JAISoundID
/* 802AA820  80 1F 00 00 */	lwz r0, 0(r31)
/* 802AA824  90 01 00 08 */	stw r0, 8(r1)
/* 802AA828  38 7E 07 9C */	addi r3, r30, 0x79c
/* 802AA82C  38 81 00 08 */	addi r4, r1, 8
/* 802AA830  4B FF 98 89 */	bl stopSoundID__12JAIStreamMgrF10JAISoundID
/* 802AA834  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AA838  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802AA83C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AA840  7C 08 03 A6 */	mtlr r0
/* 802AA844  38 21 00 20 */	addi r1, r1, 0x20
/* 802AA848  4E 80 00 20 */	blr 
