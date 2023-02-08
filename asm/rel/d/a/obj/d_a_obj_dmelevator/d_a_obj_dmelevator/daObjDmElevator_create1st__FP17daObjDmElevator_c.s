lbl_80BDF764:
/* 80BDF764  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDF768  7C 08 02 A6 */	mflr r0
/* 80BDF76C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDF770  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDF774  93 C1 00 08 */	stw r30, 8(r1)
/* 80BDF778  7C 7F 1B 78 */	mr r31, r3
/* 80BDF77C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BDF780  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BDF784  40 82 00 34 */	bne lbl_80BDF7B8
/* 80BDF788  7F E0 FB 79 */	or. r0, r31, r31
/* 80BDF78C  41 82 00 20 */	beq lbl_80BDF7AC
/* 80BDF790  7C 1E 03 78 */	mr r30, r0
/* 80BDF794  4B 49 8E 91 */	bl __ct__16dBgS_MoveBgActorFv
/* 80BDF798  3C 60 80 BE */	lis r3, __vt__17daObjDmElevator_c@ha /* 0x80BDFB08@ha */
/* 80BDF79C  38 03 FB 08 */	addi r0, r3, __vt__17daObjDmElevator_c@l /* 0x80BDFB08@l */
/* 80BDF7A0  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BDF7A4  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80BDF7A8  4B 6D F0 9D */	bl __ct__16Z2SoundObjSimpleFv
lbl_80BDF7AC:
/* 80BDF7AC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BDF7B0  60 00 00 08 */	ori r0, r0, 8
/* 80BDF7B4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BDF7B8:
/* 80BDF7B8  7F E3 FB 78 */	mr r3, r31
/* 80BDF7BC  4B FF EC 8D */	bl create1st__17daObjDmElevator_cFv
/* 80BDF7C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDF7C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BDF7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDF7CC  7C 08 03 A6 */	mtlr r0
/* 80BDF7D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDF7D4  4E 80 00 20 */	blr 
