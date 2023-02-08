lbl_80C6A1C0:
/* 80C6A1C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6A1C4  7C 08 02 A6 */	mflr r0
/* 80C6A1C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6A1CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6A1D0  7C 7F 1B 78 */	mr r31, r3
/* 80C6A1D4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C6A1D8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C6A1DC  40 82 00 48 */	bne lbl_80C6A224
/* 80C6A1E0  28 1F 00 00 */	cmplwi r31, 0
/* 80C6A1E4  41 82 00 34 */	beq lbl_80C6A218
/* 80C6A1E8  4B 40 E4 3D */	bl __ct__16dBgS_MoveBgActorFv
/* 80C6A1EC  3C 60 80 C7 */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80C6A49C@ha */
/* 80C6A1F0  38 03 A4 9C */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80C6A49C@l */
/* 80C6A1F4  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80C6A1F8  93 FF 05 A4 */	stw r31, 0x5a4(r31)
/* 80C6A1FC  38 00 00 00 */	li r0, 0
/* 80C6A200  90 1F 05 A8 */	stw r0, 0x5a8(r31)
/* 80C6A204  3C 60 80 C7 */	lis r3, __vt__14daObjLv4Sand_c@ha /* 0x80C6A4C0@ha */
/* 80C6A208  38 63 A4 C0 */	addi r3, r3, __vt__14daObjLv4Sand_c@l /* 0x80C6A4C0@l */
/* 80C6A20C  90 7F 05 9C */	stw r3, 0x59c(r31)
/* 80C6A210  38 03 00 28 */	addi r0, r3, 0x28
/* 80C6A214  90 1F 05 A0 */	stw r0, 0x5a0(r31)
lbl_80C6A218:
/* 80C6A218  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C6A21C  60 00 00 08 */	ori r0, r0, 8
/* 80C6A220  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C6A224:
/* 80C6A224  7F E3 FB 78 */	mr r3, r31
/* 80C6A228  4B FF FB 65 */	bl create1st__14daObjLv4Sand_cFv
/* 80C6A22C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6A230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6A234  7C 08 03 A6 */	mtlr r0
/* 80C6A238  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6A23C  4E 80 00 20 */	blr 
