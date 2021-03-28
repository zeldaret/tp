lbl_80BC7F38:
/* 80BC7F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC7F3C  7C 08 02 A6 */	mflr r0
/* 80BC7F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC7F44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC7F48  7C 7F 1B 78 */	mr r31, r3
/* 80BC7F4C  4B 4B 06 D8 */	b __ct__16dBgS_MoveBgActorFv
/* 80BC7F50  3C 60 80 BD */	lis r3, __vt__17daObjChandelier_c@ha
/* 80BC7F54  38 03 8E 3C */	addi r0, r3, __vt__17daObjChandelier_c@l
/* 80BC7F58  90 1F 05 9C */	stw r0, 0x59c(r31)
/* 80BC7F5C  7F E3 FB 78 */	mr r3, r31
/* 80BC7F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC7F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC7F68  7C 08 03 A6 */	mtlr r0
/* 80BC7F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC7F70  4E 80 00 20 */	blr 
