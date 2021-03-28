lbl_80D0E228:
/* 80D0E228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0E22C  7C 08 02 A6 */	mflr r0
/* 80D0E230  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0E234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0E238  93 C1 00 08 */	stw r30, 8(r1)
/* 80D0E23C  7C 7F 1B 78 */	mr r31, r3
/* 80D0E240  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D0E244  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D0E248  40 82 00 7C */	bne lbl_80D0E2C4
/* 80D0E24C  7F E0 FB 79 */	or. r0, r31, r31
/* 80D0E250  41 82 00 68 */	beq lbl_80D0E2B8
/* 80D0E254  7C 1E 03 78 */	mr r30, r0
/* 80D0E258  4B 36 A3 CC */	b __ct__16dBgS_MoveBgActorFv
/* 80D0E25C  3C 60 80 D1 */	lis r3, __vt__13daObjThDoor_c@ha
/* 80D0E260  38 03 E7 B4 */	addi r0, r3, __vt__13daObjThDoor_c@l
/* 80D0E264  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80D0E268  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80D0E26C  4B 53 BC 94 */	b __ct__10dMsgFlow_cFv
/* 80D0E270  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D0E274  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D0E278  90 1E 06 24 */	stw r0, 0x624(r30)
/* 80D0E27C  38 7E 06 28 */	addi r3, r30, 0x628
/* 80D0E280  4B 37 54 E0 */	b __ct__10dCcD_GSttsFv
/* 80D0E284  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D0E288  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D0E28C  90 7E 06 24 */	stw r3, 0x624(r30)
/* 80D0E290  38 03 00 20 */	addi r0, r3, 0x20
/* 80D0E294  90 1E 06 28 */	stw r0, 0x628(r30)
/* 80D0E298  38 7E 06 48 */	addi r3, r30, 0x648
/* 80D0E29C  3C 80 80 D1 */	lis r4, __ct__8dCcD_CylFv@ha
/* 80D0E2A0  38 84 E3 B0 */	addi r4, r4, __ct__8dCcD_CylFv@l
/* 80D0E2A4  3C A0 80 D1 */	lis r5, __dt__8dCcD_CylFv@ha
/* 80D0E2A8  38 A5 E2 E4 */	addi r5, r5, __dt__8dCcD_CylFv@l
/* 80D0E2AC  38 C0 01 3C */	li r6, 0x13c
/* 80D0E2B0  38 E0 00 02 */	li r7, 2
/* 80D0E2B4  4B 65 3A AC */	b __construct_array
lbl_80D0E2B8:
/* 80D0E2B8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D0E2BC  60 00 00 08 */	ori r0, r0, 8
/* 80D0E2C0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D0E2C4:
/* 80D0E2C4  7F E3 FB 78 */	mr r3, r31
/* 80D0E2C8  4B FF F5 A1 */	bl create1st__13daObjThDoor_cFv
/* 80D0E2CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0E2D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D0E2D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0E2D8  7C 08 03 A6 */	mtlr r0
/* 80D0E2DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0E2E0  4E 80 00 20 */	blr 
