lbl_80A1B628:
/* 80A1B628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1B62C  7C 08 02 A6 */	mflr r0
/* 80A1B630  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1B634  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1B638  93 C1 00 08 */	stw r30, 8(r1)
/* 80A1B63C  7C 7E 1B 78 */	mr r30, r3
/* 80A1B640  4B FF FF B1 */	bl getSygnalInfo__15daNpcKasi_Mng_cFv
/* 80A1B644  7C 7F 1B 78 */	mr r31, r3
/* 80A1B648  38 7E 00 08 */	addi r3, r30, 8
/* 80A1B64C  4B 73 50 A1 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B650  28 03 00 00 */	cmplwi r3, 0
/* 80A1B654  41 82 00 40 */	beq lbl_80A1B694
/* 80A1B658  93 E3 14 40 */	stw r31, 0x1440(r3)
/* 80A1B65C  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80A1B660  D0 03 14 44 */	stfs f0, 0x1444(r3)
/* 80A1B664  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80A1B668  D0 03 14 48 */	stfs f0, 0x1448(r3)
/* 80A1B66C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80A1B670  D0 03 14 4C */	stfs f0, 0x144c(r3)
/* 80A1B674  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80A1B678  D0 03 14 50 */	stfs f0, 0x1450(r3)
/* 80A1B67C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80A1B680  D0 03 14 54 */	stfs f0, 0x1454(r3)
/* 80A1B684  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80A1B688  D0 03 14 58 */	stfs f0, 0x1458(r3)
/* 80A1B68C  80 1E 00 48 */	lwz r0, 0x48(r30)
/* 80A1B690  90 03 14 5C */	stw r0, 0x145c(r3)
lbl_80A1B694:
/* 80A1B694  38 7E 00 10 */	addi r3, r30, 0x10
/* 80A1B698  4B 73 50 55 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B69C  28 03 00 00 */	cmplwi r3, 0
/* 80A1B6A0  41 82 00 40 */	beq lbl_80A1B6E0
/* 80A1B6A4  93 E3 14 44 */	stw r31, 0x1444(r3)
/* 80A1B6A8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A1B6AC  D0 03 14 48 */	stfs f0, 0x1448(r3)
/* 80A1B6B0  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80A1B6B4  D0 03 14 4C */	stfs f0, 0x144c(r3)
/* 80A1B6B8  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A1B6BC  D0 03 14 50 */	stfs f0, 0x1450(r3)
/* 80A1B6C0  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80A1B6C4  D0 03 14 54 */	stfs f0, 0x1454(r3)
/* 80A1B6C8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80A1B6CC  D0 03 14 58 */	stfs f0, 0x1458(r3)
/* 80A1B6D0  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80A1B6D4  D0 03 14 5C */	stfs f0, 0x145c(r3)
/* 80A1B6D8  80 1E 00 48 */	lwz r0, 0x48(r30)
/* 80A1B6DC  90 03 14 60 */	stw r0, 0x1460(r3)
lbl_80A1B6E0:
/* 80A1B6E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A1B6E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A1B6E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1B6EC  7C 08 03 A6 */	mtlr r0
/* 80A1B6F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1B6F4  4E 80 00 20 */	blr 
