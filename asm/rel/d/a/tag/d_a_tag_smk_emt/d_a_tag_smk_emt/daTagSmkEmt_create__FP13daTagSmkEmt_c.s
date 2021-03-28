lbl_80D61544:
/* 80D61544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D61548  7C 08 02 A6 */	mflr r0
/* 80D6154C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D61550  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D61554  7C 7F 1B 78 */	mr r31, r3
/* 80D61558  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D6155C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D61560  40 82 00 1C */	bne lbl_80D6157C
/* 80D61564  28 1F 00 00 */	cmplwi r31, 0
/* 80D61568  41 82 00 08 */	beq lbl_80D61570
/* 80D6156C  4B FF FD 6D */	bl __ct__13daTagSmkEmt_cFv
lbl_80D61570:
/* 80D61570  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D61574  60 00 00 08 */	ori r0, r0, 8
/* 80D61578  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D6157C:
/* 80D6157C  7F E3 FB 78 */	mr r3, r31
/* 80D61580  4B FF FE 05 */	bl create__13daTagSmkEmt_cFv
/* 80D61584  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D61588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6158C  7C 08 03 A6 */	mtlr r0
/* 80D61590  38 21 00 10 */	addi r1, r1, 0x10
/* 80D61594  4E 80 00 20 */	blr 
