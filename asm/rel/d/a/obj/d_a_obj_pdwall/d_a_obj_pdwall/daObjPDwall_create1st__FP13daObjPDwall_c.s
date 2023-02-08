lbl_80CAD074:
/* 80CAD074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAD078  7C 08 02 A6 */	mflr r0
/* 80CAD07C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAD080  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAD084  7C 7F 1B 78 */	mr r31, r3
/* 80CAD088  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CAD08C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CAD090  40 82 00 28 */	bne lbl_80CAD0B8
/* 80CAD094  28 1F 00 00 */	cmplwi r31, 0
/* 80CAD098  41 82 00 14 */	beq lbl_80CAD0AC
/* 80CAD09C  4B 3C B5 89 */	bl __ct__16dBgS_MoveBgActorFv
/* 80CAD0A0  3C 60 80 CB */	lis r3, __vt__13daObjPDwall_c@ha /* 0x80CAD250@ha */
/* 80CAD0A4  38 03 D2 50 */	addi r0, r3, __vt__13daObjPDwall_c@l /* 0x80CAD250@l */
/* 80CAD0A8  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80CAD0AC:
/* 80CAD0AC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CAD0B0  60 00 00 08 */	ori r0, r0, 8
/* 80CAD0B4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CAD0B8:
/* 80CAD0B8  7F E3 FB 78 */	mr r3, r31
/* 80CAD0BC  4B FF F7 3D */	bl create1st__13daObjPDwall_cFv
/* 80CAD0C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAD0C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAD0C8  7C 08 03 A6 */	mtlr r0
/* 80CAD0CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAD0D0  4E 80 00 20 */	blr 
