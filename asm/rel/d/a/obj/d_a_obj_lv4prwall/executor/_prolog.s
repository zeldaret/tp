lbl_80C68C20:
/* 80C68C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C68C24  7C 08 02 A6 */	mflr r0
/* 80C68C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C68C2C  3C 60 80 C7 */	lis r3, data_80C698E0@ha
/* 80C68C30  38 63 98 E0 */	addi r3, r3, data_80C698E0@l
/* 80C68C34  4B 5F A5 18 */	b ModuleConstructorsX
/* 80C68C38  4B 5F A4 50 */	b ModuleProlog
/* 80C68C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C68C40  7C 08 03 A6 */	mtlr r0
/* 80C68C44  38 21 00 10 */	addi r1, r1, 0x10
/* 80C68C48  4E 80 00 20 */	blr 
