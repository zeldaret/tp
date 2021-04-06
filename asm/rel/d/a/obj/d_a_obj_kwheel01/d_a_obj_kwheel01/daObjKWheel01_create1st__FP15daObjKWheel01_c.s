lbl_80C4F4C0:
/* 80C4F4C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4F4C4  7C 08 02 A6 */	mflr r0
/* 80C4F4C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4F4CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4F4D0  7C 7F 1B 78 */	mr r31, r3
/* 80C4F4D4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C4F4D8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C4F4DC  40 82 00 48 */	bne lbl_80C4F524
/* 80C4F4E0  28 1F 00 00 */	cmplwi r31, 0
/* 80C4F4E4  41 82 00 34 */	beq lbl_80C4F518
/* 80C4F4E8  4B 42 91 3D */	bl __ct__16dBgS_MoveBgActorFv
/* 80C4F4EC  3C 60 80 C5 */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80C4F77C@ha */
/* 80C4F4F0  38 03 F7 7C */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80C4F77C@l */
/* 80C4F4F4  90 1F 05 A8 */	stw r0, 0x5a8(r31)
/* 80C4F4F8  93 FF 05 AC */	stw r31, 0x5ac(r31)
/* 80C4F4FC  38 00 00 00 */	li r0, 0
/* 80C4F500  90 1F 05 B0 */	stw r0, 0x5b0(r31)
/* 80C4F504  3C 60 80 C5 */	lis r3, __vt__15daObjKWheel01_c@ha /* 0x80C4F794@ha */
/* 80C4F508  38 63 F7 94 */	addi r3, r3, __vt__15daObjKWheel01_c@l /* 0x80C4F794@l */
/* 80C4F50C  90 7F 05 9C */	stw r3, 0x59c(r31)
/* 80C4F510  38 03 00 28 */	addi r0, r3, 0x28
/* 80C4F514  90 1F 05 A8 */	stw r0, 0x5a8(r31)
lbl_80C4F518:
/* 80C4F518  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C4F51C  60 00 00 08 */	ori r0, r0, 8
/* 80C4F520  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C4F524:
/* 80C4F524  7F E3 FB 78 */	mr r3, r31
/* 80C4F528  4B FF F5 51 */	bl create1st__15daObjKWheel01_cFv
/* 80C4F52C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4F530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4F534  7C 08 03 A6 */	mtlr r0
/* 80C4F538  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4F53C  4E 80 00 20 */	blr 
