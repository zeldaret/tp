lbl_804FB000:
/* 804FB000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FB004  7C 08 02 A6 */	mflr r0
/* 804FB008  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FB00C  3C 60 80 50 */	lis r3, data_804FBB7C@ha
/* 804FB010  38 63 BB 7C */	addi r3, r3, data_804FBB7C@l
/* 804FB014  4B D6 81 38 */	b ModuleConstructorsX
/* 804FB018  4B D6 80 70 */	b ModuleProlog
/* 804FB01C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FB020  7C 08 03 A6 */	mtlr r0
/* 804FB024  38 21 00 10 */	addi r1, r1, 0x10
/* 804FB028  4E 80 00 20 */	blr 
