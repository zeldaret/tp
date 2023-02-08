lbl_80B1119C:
/* 80B1119C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B111A0  7C 08 02 A6 */	mflr r0
/* 80B111A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B111A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B111AC  7C 7F 1B 78 */	mr r31, r3
/* 80B111B0  38 7F 06 74 */	addi r3, r31, 0x674
/* 80B111B4  4B 56 61 F1 */	bl ClrMoveBGOnly__9dBgS_AcchFv
/* 80B111B8  80 1F 06 A0 */	lwz r0, 0x6a0(r31)
/* 80B111BC  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80B111C0  90 1F 06 A0 */	stw r0, 0x6a0(r31)
/* 80B111C4  38 7F 08 8C */	addi r3, r31, 0x88c
/* 80B111C8  4B 57 33 81 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80B111CC  38 7F 06 24 */	addi r3, r31, 0x624
/* 80B111D0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B111D4  4B 64 D3 DD */	bl initOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80B111D8  38 00 00 01 */	li r0, 1
/* 80B111DC  98 1F 05 F2 */	stb r0, 0x5f2(r31)
/* 80B111E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B111E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B111E8  7C 08 03 A6 */	mtlr r0
/* 80B111EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B111F0  4E 80 00 20 */	blr 
