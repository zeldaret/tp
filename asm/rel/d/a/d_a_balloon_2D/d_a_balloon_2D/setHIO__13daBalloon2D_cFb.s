lbl_80654E8C:
/* 80654E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80654E90  7C 08 02 A6 */	mflr r0
/* 80654E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80654E98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80654E9C  7C 7F 1B 78 */	mr r31, r3
/* 80654EA0  3C 60 80 65 */	lis r3, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80654EA4  38 63 57 7C */	addi r3, r3, l_HOSTIO@l /* 0x8065577C@l */
/* 80654EA8  88 03 00 04 */	lbz r0, 4(r3)
/* 80654EAC  28 00 00 00 */	cmplwi r0, 0
/* 80654EB0  40 82 00 0C */	bne lbl_80654EBC
/* 80654EB4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80654EB8  41 82 03 84 */	beq lbl_8065523C
lbl_80654EBC:
/* 80654EBC  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80654EC0  3C 80 80 65 */	lis r4, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80654EC4  38 84 57 7C */	addi r4, r4, l_HOSTIO@l /* 0x8065577C@l */
/* 80654EC8  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 80654ECC  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 80654ED0  4B BF F6 E1 */	bl paneTrans__8CPaneMgrFff
/* 80654ED4  3C 60 80 65 */	lis r3, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80654ED8  38 63 57 7C */	addi r3, r3, l_HOSTIO@l /* 0x8065577C@l */
/* 80654EDC  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80654EE0  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80654EE4  80 63 00 04 */	lwz r3, 4(r3)
/* 80654EE8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80654EEC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80654EF0  81 83 00 00 */	lwz r12, 0(r3)
/* 80654EF4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80654EF8  7D 89 03 A6 */	mtctr r12
/* 80654EFC  4E 80 04 21 */	bctrl 
/* 80654F00  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 80654F04  3C 80 80 65 */	lis r4, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80654F08  38 84 57 7C */	addi r4, r4, l_HOSTIO@l /* 0x8065577C@l */
/* 80654F0C  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 80654F10  C0 44 00 30 */	lfs f2, 0x30(r4)
/* 80654F14  4B BF F6 9D */	bl paneTrans__8CPaneMgrFff
/* 80654F18  3C 60 80 65 */	lis r3, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80654F1C  38 83 57 7C */	addi r4, r3, l_HOSTIO@l /* 0x8065577C@l */
/* 80654F20  C0 24 00 38 */	lfs f1, 0x38(r4)
/* 80654F24  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 80654F28  80 63 00 04 */	lwz r3, 4(r3)
/* 80654F2C  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 80654F30  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80654F34  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 80654F38  81 83 00 00 */	lwz r12, 0(r3)
/* 80654F3C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80654F40  7D 89 03 A6 */	mtctr r12
/* 80654F44  4E 80 04 21 */	bctrl 
/* 80654F48  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 80654F4C  3C 80 80 65 */	lis r4, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80654F50  38 84 57 7C */	addi r4, r4, l_HOSTIO@l /* 0x8065577C@l */
/* 80654F54  C0 24 00 3C */	lfs f1, 0x3c(r4)
/* 80654F58  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 80654F5C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80654F60  4B C0 08 71 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80654F64  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 80654F68  3C 80 80 65 */	lis r4, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80654F6C  38 84 57 7C */	addi r4, r4, l_HOSTIO@l /* 0x8065577C@l */
/* 80654F70  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 80654F74  C0 44 00 44 */	lfs f2, 0x44(r4)
/* 80654F78  4B BF F6 39 */	bl paneTrans__8CPaneMgrFff
/* 80654F7C  3C 60 80 65 */	lis r3, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80654F80  38 63 57 7C */	addi r3, r3, l_HOSTIO@l /* 0x8065577C@l */
/* 80654F84  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 80654F88  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 80654F8C  80 63 00 04 */	lwz r3, 4(r3)
/* 80654F90  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80654F94  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80654F98  81 83 00 00 */	lwz r12, 0(r3)
/* 80654F9C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80654FA0  7D 89 03 A6 */	mtctr r12
/* 80654FA4  4E 80 04 21 */	bctrl 
/* 80654FA8  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80654FAC  3C 80 80 65 */	lis r4, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80654FB0  38 84 57 7C */	addi r4, r4, l_HOSTIO@l /* 0x8065577C@l */
/* 80654FB4  C0 24 00 4C */	lfs f1, 0x4c(r4)
/* 80654FB8  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 80654FBC  4B BF F5 F5 */	bl paneTrans__8CPaneMgrFff
/* 80654FC0  3C 60 80 65 */	lis r3, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80654FC4  38 63 57 7C */	addi r3, r3, l_HOSTIO@l /* 0x8065577C@l */
/* 80654FC8  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 80654FCC  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80654FD0  80 63 00 04 */	lwz r3, 4(r3)
/* 80654FD4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80654FD8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80654FDC  81 83 00 00 */	lwz r12, 0(r3)
/* 80654FE0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80654FE4  7D 89 03 A6 */	mtctr r12
/* 80654FE8  4E 80 04 21 */	bctrl 
/* 80654FEC  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80654FF0  3C 80 80 65 */	lis r4, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80654FF4  38 84 57 7C */	addi r4, r4, l_HOSTIO@l /* 0x8065577C@l */
/* 80654FF8  C0 24 00 58 */	lfs f1, 0x58(r4)
/* 80654FFC  C0 44 00 5C */	lfs f2, 0x5c(r4)
/* 80655000  4B BF F5 B1 */	bl paneTrans__8CPaneMgrFff
/* 80655004  3C 60 80 65 */	lis r3, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80655008  38 63 57 7C */	addi r3, r3, l_HOSTIO@l /* 0x8065577C@l */
/* 8065500C  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 80655010  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80655014  80 63 00 04 */	lwz r3, 4(r3)
/* 80655018  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8065501C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80655020  81 83 00 00 */	lwz r12, 0(r3)
/* 80655024  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80655028  7D 89 03 A6 */	mtctr r12
/* 8065502C  4E 80 04 21 */	bctrl 
/* 80655030  80 7F 05 90 */	lwz r3, 0x590(r31)
/* 80655034  3C 80 80 65 */	lis r4, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80655038  38 84 57 7C */	addi r4, r4, l_HOSTIO@l /* 0x8065577C@l */
/* 8065503C  C0 24 00 64 */	lfs f1, 0x64(r4)
/* 80655040  C0 44 00 68 */	lfs f2, 0x68(r4)
/* 80655044  4B BF F5 6D */	bl paneTrans__8CPaneMgrFff
/* 80655048  3C 60 80 65 */	lis r3, l_HOSTIO@ha /* 0x8065577C@ha */
/* 8065504C  38 83 57 7C */	addi r4, r3, l_HOSTIO@l /* 0x8065577C@l */
/* 80655050  C0 24 00 70 */	lfs f1, 0x70(r4)
/* 80655054  80 7F 05 90 */	lwz r3, 0x590(r31)
/* 80655058  80 63 00 04 */	lwz r3, 4(r3)
/* 8065505C  C0 04 00 6C */	lfs f0, 0x6c(r4)
/* 80655060  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80655064  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 80655068  81 83 00 00 */	lwz r12, 0(r3)
/* 8065506C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80655070  7D 89 03 A6 */	mtctr r12
/* 80655074  4E 80 04 21 */	bctrl 
/* 80655078  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 8065507C  3C 80 80 65 */	lis r4, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80655080  38 84 57 7C */	addi r4, r4, l_HOSTIO@l /* 0x8065577C@l */
/* 80655084  C0 24 00 78 */	lfs f1, 0x78(r4)
/* 80655088  C0 44 00 7C */	lfs f2, 0x7c(r4)
/* 8065508C  4B BF F5 25 */	bl paneTrans__8CPaneMgrFff
/* 80655090  3C 60 80 65 */	lis r3, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80655094  38 63 57 7C */	addi r3, r3, l_HOSTIO@l /* 0x8065577C@l */
/* 80655098  C0 03 00 80 */	lfs f0, 0x80(r3)
/* 8065509C  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 806550A0  80 63 00 04 */	lwz r3, 4(r3)
/* 806550A4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 806550A8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 806550AC  81 83 00 00 */	lwz r12, 0(r3)
/* 806550B0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806550B4  7D 89 03 A6 */	mtctr r12
/* 806550B8  4E 80 04 21 */	bctrl 
/* 806550BC  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 806550C0  3C 80 80 65 */	lis r4, l_HOSTIO@ha /* 0x8065577C@ha */
/* 806550C4  38 84 57 7C */	addi r4, r4, l_HOSTIO@l /* 0x8065577C@l */
/* 806550C8  C0 24 00 84 */	lfs f1, 0x84(r4)
/* 806550CC  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 806550D0  EC 21 00 32 */	fmuls f1, f1, f0
/* 806550D4  4B C0 06 FD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 806550D8  80 7F 05 98 */	lwz r3, 0x598(r31)
/* 806550DC  3C 80 80 65 */	lis r4, l_HOSTIO@ha /* 0x8065577C@ha */
/* 806550E0  38 84 57 7C */	addi r4, r4, l_HOSTIO@l /* 0x8065577C@l */
/* 806550E4  C0 24 00 88 */	lfs f1, 0x88(r4)
/* 806550E8  C0 44 00 8C */	lfs f2, 0x8c(r4)
/* 806550EC  4B BF F4 C5 */	bl paneTrans__8CPaneMgrFff
/* 806550F0  3C 60 80 65 */	lis r3, l_HOSTIO@ha /* 0x8065577C@ha */
/* 806550F4  38 63 57 7C */	addi r3, r3, l_HOSTIO@l /* 0x8065577C@l */
/* 806550F8  C0 03 00 90 */	lfs f0, 0x90(r3)
/* 806550FC  80 7F 05 98 */	lwz r3, 0x598(r31)
/* 80655100  80 63 00 04 */	lwz r3, 4(r3)
/* 80655104  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80655108  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8065510C  81 83 00 00 */	lwz r12, 0(r3)
/* 80655110  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80655114  7D 89 03 A6 */	mtctr r12
/* 80655118  4E 80 04 21 */	bctrl 
/* 8065511C  80 7F 05 98 */	lwz r3, 0x598(r31)
/* 80655120  3C 80 80 65 */	lis r4, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80655124  38 84 57 7C */	addi r4, r4, l_HOSTIO@l /* 0x8065577C@l */
/* 80655128  C0 24 00 94 */	lfs f1, 0x94(r4)
/* 8065512C  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 80655130  EC 21 00 32 */	fmuls f1, f1, f0
/* 80655134  4B C0 06 9D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80655138  80 7F 05 9C */	lwz r3, 0x59c(r31)
/* 8065513C  3C 80 80 65 */	lis r4, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80655140  38 84 57 7C */	addi r4, r4, l_HOSTIO@l /* 0x8065577C@l */
/* 80655144  C0 24 00 98 */	lfs f1, 0x98(r4)
/* 80655148  C0 44 00 9C */	lfs f2, 0x9c(r4)
/* 8065514C  4B BF F4 65 */	bl paneTrans__8CPaneMgrFff
/* 80655150  3C 60 80 65 */	lis r3, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80655154  38 63 57 7C */	addi r3, r3, l_HOSTIO@l /* 0x8065577C@l */
/* 80655158  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 8065515C  80 7F 05 9C */	lwz r3, 0x59c(r31)
/* 80655160  80 63 00 04 */	lwz r3, 4(r3)
/* 80655164  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80655168  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8065516C  81 83 00 00 */	lwz r12, 0(r3)
/* 80655170  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80655174  7D 89 03 A6 */	mtctr r12
/* 80655178  4E 80 04 21 */	bctrl 
/* 8065517C  80 7F 05 9C */	lwz r3, 0x59c(r31)
/* 80655180  3C 80 80 65 */	lis r4, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80655184  38 84 57 7C */	addi r4, r4, l_HOSTIO@l /* 0x8065577C@l */
/* 80655188  C0 24 00 A4 */	lfs f1, 0xa4(r4)
/* 8065518C  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 80655190  EC 21 00 32 */	fmuls f1, f1, f0
/* 80655194  4B C0 06 3D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80655198  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 8065519C  3C 80 80 65 */	lis r4, l_HOSTIO@ha /* 0x8065577C@ha */
/* 806551A0  38 84 57 7C */	addi r4, r4, l_HOSTIO@l /* 0x8065577C@l */
/* 806551A4  C0 24 00 A8 */	lfs f1, 0xa8(r4)
/* 806551A8  C0 44 00 AC */	lfs f2, 0xac(r4)
/* 806551AC  4B BF F4 05 */	bl paneTrans__8CPaneMgrFff
/* 806551B0  3C 60 80 65 */	lis r3, l_HOSTIO@ha /* 0x8065577C@ha */
/* 806551B4  38 63 57 7C */	addi r3, r3, l_HOSTIO@l /* 0x8065577C@l */
/* 806551B8  C0 03 00 B0 */	lfs f0, 0xb0(r3)
/* 806551BC  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 806551C0  80 63 00 04 */	lwz r3, 4(r3)
/* 806551C4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 806551C8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 806551CC  81 83 00 00 */	lwz r12, 0(r3)
/* 806551D0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806551D4  7D 89 03 A6 */	mtctr r12
/* 806551D8  4E 80 04 21 */	bctrl 
/* 806551DC  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 806551E0  3C 80 80 65 */	lis r4, l_HOSTIO@ha /* 0x8065577C@ha */
/* 806551E4  38 84 57 7C */	addi r4, r4, l_HOSTIO@l /* 0x8065577C@l */
/* 806551E8  C0 24 00 B4 */	lfs f1, 0xb4(r4)
/* 806551EC  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 806551F0  EC 21 00 32 */	fmuls f1, f1, f0
/* 806551F4  4B C0 05 DD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 806551F8  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 806551FC  3C 80 80 65 */	lis r4, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80655200  38 84 57 7C */	addi r4, r4, l_HOSTIO@l /* 0x8065577C@l */
/* 80655204  C0 24 00 B8 */	lfs f1, 0xb8(r4)
/* 80655208  C0 44 00 BC */	lfs f2, 0xbc(r4)
/* 8065520C  4B BF F3 A5 */	bl paneTrans__8CPaneMgrFff
/* 80655210  3C 60 80 65 */	lis r3, l_HOSTIO@ha /* 0x8065577C@ha */
/* 80655214  38 63 57 7C */	addi r3, r3, l_HOSTIO@l /* 0x8065577C@l */
/* 80655218  C0 03 00 C0 */	lfs f0, 0xc0(r3)
/* 8065521C  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 80655220  80 63 00 04 */	lwz r3, 4(r3)
/* 80655224  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80655228  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8065522C  81 83 00 00 */	lwz r12, 0(r3)
/* 80655230  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80655234  7D 89 03 A6 */	mtctr r12
/* 80655238  4E 80 04 21 */	bctrl 
lbl_8065523C:
/* 8065523C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80655240  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80655244  7C 08 03 A6 */	mtlr r0
/* 80655248  38 21 00 10 */	addi r1, r1, 0x10
/* 8065524C  4E 80 00 20 */	blr 
