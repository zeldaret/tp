lbl_803730BC:
/* 803730BC  7C 08 02 A6 */	mflr r0
/* 803730C0  3C 60 00 02 */	lis r3, 0x0002 /* 0x00018000@ha */
/* 803730C4  90 01 00 04 */	stw r0, 4(r1)
/* 803730C8  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00018000@l */
/* 803730CC  94 21 FF F8 */	stwu r1, -8(r1)
/* 803730D0  4B FC A9 ED */	bl __OSMaskInterrupts
/* 803730D4  38 60 00 40 */	li r3, 0x40
/* 803730D8  4B FC A9 E5 */	bl __OSMaskInterrupts
/* 803730DC  3C 60 80 37 */	lis r3, MWCallback@ha /* 0x803731C8@ha */
/* 803730E0  38 03 31 C8 */	addi r0, r3, MWCallback@l /* 0x803731C8@l */
/* 803730E4  3C 60 80 37 */	lis r3, DBGHandler@ha /* 0x80373188@ha */
/* 803730E8  90 0D 94 54 */	stw r0, DBGCallback(r13)
/* 803730EC  38 83 31 88 */	addi r4, r3, DBGHandler@l /* 0x80373188@l */
/* 803730F0  38 60 00 19 */	li r3, 0x19
/* 803730F4  4B FC A6 4D */	bl __OSSetInterruptHandler
/* 803730F8  38 60 00 40 */	li r3, 0x40
/* 803730FC  4B FC AA 49 */	bl __OSUnmaskInterrupts
/* 80373100  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80373104  38 21 00 08 */	addi r1, r1, 8
/* 80373108  7C 08 03 A6 */	mtlr r0
/* 8037310C  4E 80 00 20 */	blr 
