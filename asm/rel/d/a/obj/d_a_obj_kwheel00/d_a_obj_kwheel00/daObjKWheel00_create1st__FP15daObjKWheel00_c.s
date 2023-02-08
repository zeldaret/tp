lbl_80C4E2C0:
/* 80C4E2C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4E2C4  7C 08 02 A6 */	mflr r0
/* 80C4E2C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4E2CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4E2D0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C4E2D4  7C 7F 1B 78 */	mr r31, r3
/* 80C4E2D8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C4E2DC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C4E2E0  40 82 00 94 */	bne lbl_80C4E374
/* 80C4E2E4  7F E0 FB 79 */	or. r0, r31, r31
/* 80C4E2E8  41 82 00 80 */	beq lbl_80C4E368
/* 80C4E2EC  7C 1E 03 78 */	mr r30, r0
/* 80C4E2F0  4B 42 A3 35 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C4E2F4  3C 60 80 C5 */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80C4E9A0@ha */
/* 80C4E2F8  38 03 E9 A0 */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80C4E9A0@l */
/* 80C4E2FC  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80C4E300  93 DE 05 AC */	stw r30, 0x5ac(r30)
/* 80C4E304  38 00 00 00 */	li r0, 0
/* 80C4E308  90 1E 05 B0 */	stw r0, 0x5b0(r30)
/* 80C4E30C  3C 60 80 C5 */	lis r3, __vt__15daObjKWheel00_c@ha /* 0x80C4E9B8@ha */
/* 80C4E310  38 63 E9 B8 */	addi r3, r3, __vt__15daObjKWheel00_c@l /* 0x80C4E9B8@l */
/* 80C4E314  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80C4E318  38 03 00 28 */	addi r0, r3, 0x28
/* 80C4E31C  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80C4E320  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C4E324  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C4E328  90 1E 06 3C */	stw r0, 0x63c(r30)
/* 80C4E32C  38 7E 06 40 */	addi r3, r30, 0x640
/* 80C4E330  4B 43 54 31 */	bl __ct__10dCcD_GSttsFv
/* 80C4E334  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C4E338  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C4E33C  90 7E 06 3C */	stw r3, 0x63c(r30)
/* 80C4E340  38 03 00 20 */	addi r0, r3, 0x20
/* 80C4E344  90 1E 06 40 */	stw r0, 0x640(r30)
/* 80C4E348  38 7E 06 60 */	addi r3, r30, 0x660
/* 80C4E34C  3C 80 80 C5 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x80C4E460@ha */
/* 80C4E350  38 84 E4 60 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x80C4E460@l */
/* 80C4E354  3C A0 80 C5 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x80C4E394@ha */
/* 80C4E358  38 A5 E3 94 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x80C4E394@l */
/* 80C4E35C  38 C0 01 38 */	li r6, 0x138
/* 80C4E360  38 E0 00 04 */	li r7, 4
/* 80C4E364  4B 71 39 FD */	bl __construct_array
lbl_80C4E368:
/* 80C4E368  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C4E36C  60 00 00 08 */	ori r0, r0, 8
/* 80C4E370  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C4E374:
/* 80C4E374  7F E3 FB 78 */	mr r3, r31
/* 80C4E378  4B FF F3 81 */	bl create1st__15daObjKWheel00_cFv
/* 80C4E37C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4E380  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C4E384  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4E388  7C 08 03 A6 */	mtlr r0
/* 80C4E38C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4E390  4E 80 00 20 */	blr 
