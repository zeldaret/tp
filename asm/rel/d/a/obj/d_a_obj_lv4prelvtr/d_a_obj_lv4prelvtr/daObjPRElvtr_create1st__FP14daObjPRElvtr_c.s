lbl_80C68A24:
/* 80C68A24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C68A28  7C 08 02 A6 */	mflr r0
/* 80C68A2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C68A30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C68A34  7C 7F 1B 78 */	mr r31, r3
/* 80C68A38  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C68A3C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C68A40  40 82 00 28 */	bne lbl_80C68A68
/* 80C68A44  28 1F 00 00 */	cmplwi r31, 0
/* 80C68A48  41 82 00 14 */	beq lbl_80C68A5C
/* 80C68A4C  4B 40 FB D9 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C68A50  3C 60 80 C7 */	lis r3, __vt__14daObjPRElvtr_c@ha /* 0x80C68BEC@ha */
/* 80C68A54  38 03 8B EC */	addi r0, r3, __vt__14daObjPRElvtr_c@l /* 0x80C68BEC@l */
/* 80C68A58  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80C68A5C:
/* 80C68A5C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C68A60  60 00 00 08 */	ori r0, r0, 8
/* 80C68A64  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C68A68:
/* 80C68A68  7F E3 FB 78 */	mr r3, r31
/* 80C68A6C  4B FF FB 8D */	bl create1st__14daObjPRElvtr_cFv
/* 80C68A70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C68A74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C68A78  7C 08 03 A6 */	mtlr r0
/* 80C68A7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C68A80  4E 80 00 20 */	blr 
