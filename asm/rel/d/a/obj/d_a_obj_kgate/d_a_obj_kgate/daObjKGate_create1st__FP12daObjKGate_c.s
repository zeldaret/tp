lbl_8058A768:
/* 8058A768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058A76C  7C 08 02 A6 */	mflr r0
/* 8058A770  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058A774  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058A778  93 C1 00 08 */	stw r30, 8(r1)
/* 8058A77C  7C 7F 1B 78 */	mr r31, r3
/* 8058A780  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8058A784  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8058A788  40 82 00 74 */	bne lbl_8058A7FC
/* 8058A78C  7F E0 FB 79 */	or. r0, r31, r31
/* 8058A790  41 82 00 60 */	beq lbl_8058A7F0
/* 8058A794  7C 1E 03 78 */	mr r30, r0
/* 8058A798  4B AE DE 8C */	b __ct__16dBgS_MoveBgActorFv
/* 8058A79C  3C 60 80 59 */	lis r3, __vt__12daObjKGate_c@ha
/* 8058A7A0  38 03 AE 7C */	addi r0, r3, __vt__12daObjKGate_c@l
/* 8058A7A4  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 8058A7A8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8058A7AC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8058A7B0  90 1E 05 D0 */	stw r0, 0x5d0(r30)
/* 8058A7B4  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 8058A7B8  4B AF 8F A8 */	b __ct__10dCcD_GSttsFv
/* 8058A7BC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8058A7C0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8058A7C4  90 7E 05 D0 */	stw r3, 0x5d0(r30)
/* 8058A7C8  38 03 00 20 */	addi r0, r3, 0x20
/* 8058A7CC  90 1E 05 D4 */	stw r0, 0x5d4(r30)
/* 8058A7D0  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 8058A7D4  3C 80 80 59 */	lis r4, __ct__8dCcD_CylFv@ha
/* 8058A7D8  38 84 A8 E8 */	addi r4, r4, __ct__8dCcD_CylFv@l
/* 8058A7DC  3C A0 80 59 */	lis r5, __dt__8dCcD_CylFv@ha
/* 8058A7E0  38 A5 A8 1C */	addi r5, r5, __dt__8dCcD_CylFv@l
/* 8058A7E4  38 C0 01 3C */	li r6, 0x13c
/* 8058A7E8  38 E0 00 04 */	li r7, 4
/* 8058A7EC  4B DD 75 74 */	b __construct_array
lbl_8058A7F0:
/* 8058A7F0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8058A7F4  60 00 00 08 */	ori r0, r0, 8
/* 8058A7F8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8058A7FC:
/* 8058A7FC  7F E3 FB 78 */	mr r3, r31
/* 8058A800  4B FF E3 F9 */	bl create1st__12daObjKGate_cFv
/* 8058A804  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058A808  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058A80C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058A810  7C 08 03 A6 */	mtlr r0
/* 8058A814  38 21 00 10 */	addi r1, r1, 0x10
/* 8058A818  4E 80 00 20 */	blr 
