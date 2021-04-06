lbl_80294B70:
/* 80294B70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80294B74  7C 08 02 A6 */	mflr r0
/* 80294B78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80294B7C  80 05 00 00 */	lwz r0, 0(r5)
/* 80294B80  28 00 00 80 */	cmplwi r0, 0x80
/* 80294B84  40 80 00 1C */	bge lbl_80294BA0
/* 80294B88  7C 83 23 78 */	mr r3, r4
/* 80294B8C  54 05 18 38 */	slwi r5, r0, 3
/* 80294B90  3C 80 80 3A */	lis r4, CUTOFF_TO_IIR_TABLE__7JASCalc@ha /* 0x8039ABB8@ha */
/* 80294B94  38 04 AB B8 */	addi r0, r4, CUTOFF_TO_IIR_TABLE__7JASCalc@l /* 0x8039ABB8@l */
/* 80294B98  7C 80 2A 14 */	add r4, r0, r5
/* 80294B9C  4B FF DD 01 */	bl setIIR__8JASTrackFPCs
lbl_80294BA0:
/* 80294BA0  38 60 00 00 */	li r3, 0
/* 80294BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294BA8  7C 08 03 A6 */	mtlr r0
/* 80294BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80294BB0  4E 80 00 20 */	blr 
