lbl_80C39A00:
/* 80C39A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C39A04  7C 08 02 A6 */	mflr r0
/* 80C39A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C39A0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C39A10  7C 7F 1B 78 */	mr r31, r3
/* 80C39A14  38 7F 09 70 */	addi r3, r31, 0x970
/* 80C39A18  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C39A1C  4B 63 5C 2D */	bl SetC__8cM3dGSphFRC4cXyz
/* 80C39A20  38 7F 09 70 */	addi r3, r31, 0x970
/* 80C39A24  3C 80 80 C4 */	lis r4, lit_3788@ha /* 0x80C3C6BC@ha */
/* 80C39A28  C0 24 C6 BC */	lfs f1, lit_3788@l(r4)  /* 0x80C3C6BC@l */
/* 80C39A2C  4B 63 5C DD */	bl SetR__8cM3dGSphFf
/* 80C39A30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C39A34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C39A38  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C39A3C  38 9F 08 4C */	addi r4, r31, 0x84c
/* 80C39A40  4B 62 B1 69 */	bl Set__4cCcSFP8cCcD_Obj
/* 80C39A44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C39A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C39A4C  7C 08 03 A6 */	mtlr r0
/* 80C39A50  38 21 00 10 */	addi r1, r1, 0x10
/* 80C39A54  4E 80 00 20 */	blr 
