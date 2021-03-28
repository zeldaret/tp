lbl_80588000:
/* 80588000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80588004  7C 08 02 A6 */	mflr r0
/* 80588008  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058800C  3C 60 80 59 */	lis r3, data_8058AB28@ha
/* 80588010  38 63 AB 28 */	addi r3, r3, data_8058AB28@l
/* 80588014  4B CD B1 38 */	b ModuleConstructorsX
/* 80588018  4B CD B0 70 */	b ModuleProlog
/* 8058801C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80588020  7C 08 03 A6 */	mtlr r0
/* 80588024  38 21 00 10 */	addi r1, r1, 0x10
/* 80588028  4E 80 00 20 */	blr 
