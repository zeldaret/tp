lbl_800872D0:
/* 800872D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800872D4  7C 08 02 A6 */	mflr r0
/* 800872D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800872DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800872E0  7C 7F 1B 78 */	mr r31, r3
/* 800872E4  4B FF FF C9 */	bl DrawAfter__4dCcSFv
/* 800872E8  7F E3 FB 78 */	mr r3, r31
/* 800872EC  48 1D EA 45 */	bl DrawClear__4cCcSFv
/* 800872F0  38 7F 28 4C */	addi r3, r31, 0x284c
/* 800872F4  4B FF E9 FD */	bl Clear__12dCcMassS_MngFv
/* 800872F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800872FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80087300  7C 08 03 A6 */	mtlr r0
/* 80087304  38 21 00 10 */	addi r1, r1, 0x10
/* 80087308  4E 80 00 20 */	blr 
