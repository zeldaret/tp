lbl_80C697A4:
/* 80C697A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C697A8  7C 08 02 A6 */	mflr r0
/* 80C697AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C697B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C697B4  7C 7F 1B 78 */	mr r31, r3
/* 80C697B8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C697BC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C697C0  40 82 00 28 */	bne lbl_80C697E8
/* 80C697C4  28 1F 00 00 */	cmplwi r31, 0
/* 80C697C8  41 82 00 14 */	beq lbl_80C697DC
/* 80C697CC  4B 40 EE 59 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C697D0  3C 60 80 C7 */	lis r3, __vt__16daObjLv4PRwall_c@ha /* 0x80C699EC@ha */
/* 80C697D4  38 03 99 EC */	addi r0, r3, __vt__16daObjLv4PRwall_c@l /* 0x80C699EC@l */
/* 80C697D8  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80C697DC:
/* 80C697DC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C697E0  60 00 00 08 */	ori r0, r0, 8
/* 80C697E4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C697E8:
/* 80C697E8  7F E3 FB 78 */	mr r3, r31
/* 80C697EC  4B FF F4 AD */	bl create1st__16daObjLv4PRwall_cFv
/* 80C697F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C697F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C697F8  7C 08 03 A6 */	mtlr r0
/* 80C697FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C69800  4E 80 00 20 */	blr 
