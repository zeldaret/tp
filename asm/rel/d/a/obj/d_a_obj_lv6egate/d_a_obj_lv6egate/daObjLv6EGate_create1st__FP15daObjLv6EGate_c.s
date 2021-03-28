lbl_80C826DC:
/* 80C826DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C826E0  7C 08 02 A6 */	mflr r0
/* 80C826E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C826E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C826EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C826F0  7C 7F 1B 78 */	mr r31, r3
/* 80C826F4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C826F8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C826FC  40 82 00 74 */	bne lbl_80C82770
/* 80C82700  7F E0 FB 79 */	or. r0, r31, r31
/* 80C82704  41 82 00 60 */	beq lbl_80C82764
/* 80C82708  7C 1E 03 78 */	mr r30, r0
/* 80C8270C  4B 3F 5F 18 */	b __ct__16dBgS_MoveBgActorFv
/* 80C82710  3C 60 80 C8 */	lis r3, __vt__15daObjLv6EGate_c@ha
/* 80C82714  38 03 2C 78 */	addi r0, r3, __vt__15daObjLv6EGate_c@l
/* 80C82718  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C8271C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C82720  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C82724  90 1E 06 20 */	stw r0, 0x620(r30)
/* 80C82728  38 7E 06 24 */	addi r3, r30, 0x624
/* 80C8272C  4B 40 10 34 */	b __ct__10dCcD_GSttsFv
/* 80C82730  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C82734  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C82738  90 7E 06 20 */	stw r3, 0x620(r30)
/* 80C8273C  38 03 00 20 */	addi r0, r3, 0x20
/* 80C82740  90 1E 06 24 */	stw r0, 0x624(r30)
/* 80C82744  38 7E 06 44 */	addi r3, r30, 0x644
/* 80C82748  3C 80 80 C8 */	lis r4, __ct__8dCcD_CylFv@ha
/* 80C8274C  38 84 28 5C */	addi r4, r4, __ct__8dCcD_CylFv@l
/* 80C82750  3C A0 80 C8 */	lis r5, __dt__8dCcD_CylFv@ha
/* 80C82754  38 A5 27 90 */	addi r5, r5, __dt__8dCcD_CylFv@l
/* 80C82758  38 C0 01 3C */	li r6, 0x13c
/* 80C8275C  38 E0 00 08 */	li r7, 8
/* 80C82760  4B 6D F6 00 */	b __construct_array
lbl_80C82764:
/* 80C82764  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C82768  60 00 00 08 */	ori r0, r0, 8
/* 80C8276C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C82770:
/* 80C82770  7F E3 FB 78 */	mr r3, r31
/* 80C82774  4B FF F9 05 */	bl create1st__15daObjLv6EGate_cFv
/* 80C82778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8277C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C82780  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C82784  7C 08 03 A6 */	mtlr r0
/* 80C82788  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8278C  4E 80 00 20 */	blr 
