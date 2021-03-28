lbl_80B38518:
/* 80B38518  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B3851C  7C 08 02 A6 */	mflr r0
/* 80B38520  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B38524  39 61 00 70 */	addi r11, r1, 0x70
/* 80B38528  4B 82 9C B4 */	b _savegpr_29
/* 80B3852C  7C 7D 1B 78 */	mr r29, r3
/* 80B38530  3C 60 80 B4 */	lis r3, cNullVec__6Z2Calc@ha
/* 80B38534  3B E3 1D F8 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80B38538  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B3853C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B38540  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80B38544  A0 1D 0E 96 */	lhz r0, 0xe96(r29)
/* 80B38548  2C 00 00 02 */	cmpwi r0, 2
/* 80B3854C  41 82 00 DC */	beq lbl_80B38628
/* 80B38550  40 80 04 38 */	bge lbl_80B38988
/* 80B38554  2C 00 00 00 */	cmpwi r0, 0
/* 80B38558  41 82 00 0C */	beq lbl_80B38564
/* 80B3855C  48 00 04 2C */	b lbl_80B38988
/* 80B38560  48 00 04 28 */	b lbl_80B38988
lbl_80B38564:
/* 80B38564  80 7D 0B DC */	lwz r3, 0xbdc(r29)
/* 80B38568  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80B3856C  3C 60 80 B4 */	lis r3, lit_4418@ha
/* 80B38570  C0 03 18 94 */	lfs f0, lit_4418@l(r3)
/* 80B38574  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B38578  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B3857C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80B38580  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80B38584  4B 4D 47 E0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B38588  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80B3858C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B38590  4B 73 86 74 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B38594  A8 1D 0E 94 */	lha r0, 0xe94(r29)
/* 80B38598  7C 00 1A 14 */	add r0, r0, r3
/* 80B3859C  7C 04 07 34 */	extsh r4, r0
/* 80B385A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B385A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B385A8  4B 4D 3E 8C */	b mDoMtx_YrotM__FPA4_fs
/* 80B385AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B385B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B385B4  38 81 00 14 */	addi r4, r1, 0x14
/* 80B385B8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80B385BC  4B 80 E7 B0 */	b PSMTXMultVec
/* 80B385C0  80 7D 0B DC */	lwz r3, 0xbdc(r29)
/* 80B385C4  A8 03 00 24 */	lha r0, 0x24(r3)
/* 80B385C8  90 1D 0E 80 */	stw r0, 0xe80(r29)
/* 80B385CC  7F A3 EB 78 */	mr r3, r29
/* 80B385D0  38 80 00 0B */	li r4, 0xb
/* 80B385D4  38 A0 00 01 */	li r5, 1
/* 80B385D8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B385DC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B385E0  7D 89 03 A6 */	mtctr r12
/* 80B385E4  4E 80 04 21 */	bctrl 
/* 80B385E8  7F A3 EB 78 */	mr r3, r29
/* 80B385EC  38 80 00 0E */	li r4, 0xe
/* 80B385F0  3C A0 80 B4 */	lis r5, lit_4799@ha
/* 80B385F4  C0 25 18 A4 */	lfs f1, lit_4799@l(r5)
/* 80B385F8  38 A0 00 00 */	li r5, 0
/* 80B385FC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B38600  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B38604  7D 89 03 A6 */	mtctr r12
/* 80B38608  4E 80 04 21 */	bctrl 
/* 80B3860C  38 00 00 01 */	li r0, 1
/* 80B38610  98 1D 0E 98 */	stb r0, 0xe98(r29)
/* 80B38614  38 00 00 05 */	li r0, 5
/* 80B38618  90 1D 0E 74 */	stw r0, 0xe74(r29)
/* 80B3861C  38 00 00 02 */	li r0, 2
/* 80B38620  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B38624  48 00 03 64 */	b lbl_80B38988
lbl_80B38628:
/* 80B38628  80 7D 0B DC */	lwz r3, 0xbdc(r29)
/* 80B3862C  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80B38630  3C 60 80 B4 */	lis r3, lit_4418@ha
/* 80B38634  C0 03 18 94 */	lfs f0, lit_4418@l(r3)
/* 80B38638  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B3863C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B38640  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B38644  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80B38648  4B 4D 47 1C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B3864C  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80B38650  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B38654  4B 73 85 B0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B38658  A8 1D 0E 94 */	lha r0, 0xe94(r29)
/* 80B3865C  7C 00 1A 14 */	add r0, r0, r3
/* 80B38660  7C 04 07 34 */	extsh r4, r0
/* 80B38664  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B38668  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3866C  4B 4D 3D C8 */	b mDoMtx_YrotM__FPA4_fs
/* 80B38670  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B38674  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B38678  38 81 00 08 */	addi r4, r1, 8
/* 80B3867C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80B38680  4B 80 E6 EC */	b PSMTXMultVec
/* 80B38684  80 7D 0E 80 */	lwz r3, 0xe80(r29)
/* 80B38688  38 03 FF FF */	addi r0, r3, -1
/* 80B3868C  90 1D 0E 80 */	stw r0, 0xe80(r29)
/* 80B38690  7F A3 EB 78 */	mr r3, r29
/* 80B38694  4B FF D0 ED */	bl checkOutOfArenaW__15daNpcWrestler_cFv
/* 80B38698  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B3869C  41 82 00 90 */	beq lbl_80B3872C
/* 80B386A0  80 7F 0D 4C */	lwz r3, 0xd4c(r31)
/* 80B386A4  80 1F 0D 50 */	lwz r0, 0xd50(r31)
/* 80B386A8  90 61 00 50 */	stw r3, 0x50(r1)
/* 80B386AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B386B0  80 1F 0D 54 */	lwz r0, 0xd54(r31)
/* 80B386B4  90 01 00 58 */	stw r0, 0x58(r1)
/* 80B386B8  38 00 00 03 */	li r0, 3
/* 80B386BC  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B386C0  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B386C4  4B 82 99 54 */	b __ptmf_test
/* 80B386C8  2C 03 00 00 */	cmpwi r3, 0
/* 80B386CC  41 82 00 18 */	beq lbl_80B386E4
/* 80B386D0  7F A3 EB 78 */	mr r3, r29
/* 80B386D4  38 80 00 00 */	li r4, 0
/* 80B386D8  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B386DC  4B 82 99 A8 */	b __ptmf_scall
/* 80B386E0  60 00 00 00 */	nop 
lbl_80B386E4:
/* 80B386E4  38 00 00 00 */	li r0, 0
/* 80B386E8  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B386EC  80 61 00 50 */	lwz r3, 0x50(r1)
/* 80B386F0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B386F4  90 7D 0D CC */	stw r3, 0xdcc(r29)
/* 80B386F8  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80B386FC  80 01 00 58 */	lwz r0, 0x58(r1)
/* 80B38700  90 1D 0D D4 */	stw r0, 0xdd4(r29)
/* 80B38704  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B38708  4B 82 99 10 */	b __ptmf_test
/* 80B3870C  2C 03 00 00 */	cmpwi r3, 0
/* 80B38710  41 82 02 78 */	beq lbl_80B38988
/* 80B38714  7F A3 EB 78 */	mr r3, r29
/* 80B38718  38 80 00 00 */	li r4, 0
/* 80B3871C  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B38720  4B 82 99 64 */	b __ptmf_scall
/* 80B38724  60 00 00 00 */	nop 
/* 80B38728  48 00 02 60 */	b lbl_80B38988
lbl_80B3872C:
/* 80B3872C  7F A3 EB 78 */	mr r3, r29
/* 80B38730  4B FF B2 BD */	bl checkOutOfArenaP__15daNpcWrestler_cFv
/* 80B38734  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B38738  41 82 00 90 */	beq lbl_80B387C8
/* 80B3873C  80 7F 0D 58 */	lwz r3, 0xd58(r31)
/* 80B38740  80 1F 0D 5C */	lwz r0, 0xd5c(r31)
/* 80B38744  90 61 00 44 */	stw r3, 0x44(r1)
/* 80B38748  90 01 00 48 */	stw r0, 0x48(r1)
/* 80B3874C  80 1F 0D 60 */	lwz r0, 0xd60(r31)
/* 80B38750  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80B38754  38 00 00 03 */	li r0, 3
/* 80B38758  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B3875C  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B38760  4B 82 98 B8 */	b __ptmf_test
/* 80B38764  2C 03 00 00 */	cmpwi r3, 0
/* 80B38768  41 82 00 18 */	beq lbl_80B38780
/* 80B3876C  7F A3 EB 78 */	mr r3, r29
/* 80B38770  38 80 00 00 */	li r4, 0
/* 80B38774  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B38778  4B 82 99 0C */	b __ptmf_scall
/* 80B3877C  60 00 00 00 */	nop 
lbl_80B38780:
/* 80B38780  38 00 00 00 */	li r0, 0
/* 80B38784  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B38788  80 61 00 44 */	lwz r3, 0x44(r1)
/* 80B3878C  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80B38790  90 7D 0D CC */	stw r3, 0xdcc(r29)
/* 80B38794  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80B38798  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80B3879C  90 1D 0D D4 */	stw r0, 0xdd4(r29)
/* 80B387A0  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B387A4  4B 82 98 74 */	b __ptmf_test
/* 80B387A8  2C 03 00 00 */	cmpwi r3, 0
/* 80B387AC  41 82 01 DC */	beq lbl_80B38988
/* 80B387B0  7F A3 EB 78 */	mr r3, r29
/* 80B387B4  38 80 00 00 */	li r4, 0
/* 80B387B8  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B387BC  4B 82 98 C8 */	b __ptmf_scall
/* 80B387C0  60 00 00 00 */	nop 
/* 80B387C4  48 00 01 C4 */	b lbl_80B38988
lbl_80B387C8:
/* 80B387C8  88 1E 05 6A */	lbz r0, 0x56a(r30)
/* 80B387CC  28 00 00 0F */	cmplwi r0, 0xf
/* 80B387D0  40 82 00 90 */	bne lbl_80B38860
/* 80B387D4  80 7F 0D 64 */	lwz r3, 0xd64(r31)
/* 80B387D8  80 1F 0D 68 */	lwz r0, 0xd68(r31)
/* 80B387DC  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B387E0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B387E4  80 1F 0D 6C */	lwz r0, 0xd6c(r31)
/* 80B387E8  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B387EC  38 00 00 03 */	li r0, 3
/* 80B387F0  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B387F4  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B387F8  4B 82 98 20 */	b __ptmf_test
/* 80B387FC  2C 03 00 00 */	cmpwi r3, 0
/* 80B38800  41 82 00 18 */	beq lbl_80B38818
/* 80B38804  7F A3 EB 78 */	mr r3, r29
/* 80B38808  38 80 00 00 */	li r4, 0
/* 80B3880C  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B38810  4B 82 98 74 */	b __ptmf_scall
/* 80B38814  60 00 00 00 */	nop 
lbl_80B38818:
/* 80B38818  38 00 00 00 */	li r0, 0
/* 80B3881C  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B38820  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80B38824  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80B38828  90 7D 0D CC */	stw r3, 0xdcc(r29)
/* 80B3882C  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80B38830  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80B38834  90 1D 0D D4 */	stw r0, 0xdd4(r29)
/* 80B38838  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B3883C  4B 82 97 DC */	b __ptmf_test
/* 80B38840  2C 03 00 00 */	cmpwi r3, 0
/* 80B38844  41 82 01 44 */	beq lbl_80B38988
/* 80B38848  7F A3 EB 78 */	mr r3, r29
/* 80B3884C  38 80 00 00 */	li r4, 0
/* 80B38850  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B38854  4B 82 98 30 */	b __ptmf_scall
/* 80B38858  60 00 00 00 */	nop 
/* 80B3885C  48 00 01 2C */	b lbl_80B38988
lbl_80B38860:
/* 80B38860  28 00 00 13 */	cmplwi r0, 0x13
/* 80B38864  40 82 00 90 */	bne lbl_80B388F4
/* 80B38868  80 7F 0D 70 */	lwz r3, 0xd70(r31)
/* 80B3886C  80 1F 0D 74 */	lwz r0, 0xd74(r31)
/* 80B38870  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80B38874  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B38878  80 1F 0D 78 */	lwz r0, 0xd78(r31)
/* 80B3887C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B38880  38 00 00 03 */	li r0, 3
/* 80B38884  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B38888  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B3888C  4B 82 97 8C */	b __ptmf_test
/* 80B38890  2C 03 00 00 */	cmpwi r3, 0
/* 80B38894  41 82 00 18 */	beq lbl_80B388AC
/* 80B38898  7F A3 EB 78 */	mr r3, r29
/* 80B3889C  38 80 00 00 */	li r4, 0
/* 80B388A0  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B388A4  4B 82 97 E0 */	b __ptmf_scall
/* 80B388A8  60 00 00 00 */	nop 
lbl_80B388AC:
/* 80B388AC  38 00 00 00 */	li r0, 0
/* 80B388B0  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B388B4  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80B388B8  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80B388BC  90 7D 0D CC */	stw r3, 0xdcc(r29)
/* 80B388C0  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80B388C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B388C8  90 1D 0D D4 */	stw r0, 0xdd4(r29)
/* 80B388CC  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B388D0  4B 82 97 48 */	b __ptmf_test
/* 80B388D4  2C 03 00 00 */	cmpwi r3, 0
/* 80B388D8  41 82 00 B0 */	beq lbl_80B38988
/* 80B388DC  7F A3 EB 78 */	mr r3, r29
/* 80B388E0  38 80 00 00 */	li r4, 0
/* 80B388E4  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B388E8  4B 82 97 9C */	b __ptmf_scall
/* 80B388EC  60 00 00 00 */	nop 
/* 80B388F0  48 00 00 98 */	b lbl_80B38988
lbl_80B388F4:
/* 80B388F4  80 1D 0E 80 */	lwz r0, 0xe80(r29)
/* 80B388F8  2C 00 00 00 */	cmpwi r0, 0
/* 80B388FC  40 80 00 8C */	bge lbl_80B38988
/* 80B38900  80 7F 0D 7C */	lwz r3, 0xd7c(r31)
/* 80B38904  80 1F 0D 80 */	lwz r0, 0xd80(r31)
/* 80B38908  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B3890C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B38910  80 1F 0D 84 */	lwz r0, 0xd84(r31)
/* 80B38914  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B38918  38 00 00 03 */	li r0, 3
/* 80B3891C  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B38920  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B38924  4B 82 96 F4 */	b __ptmf_test
/* 80B38928  2C 03 00 00 */	cmpwi r3, 0
/* 80B3892C  41 82 00 18 */	beq lbl_80B38944
/* 80B38930  7F A3 EB 78 */	mr r3, r29
/* 80B38934  38 80 00 00 */	li r4, 0
/* 80B38938  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B3893C  4B 82 97 48 */	b __ptmf_scall
/* 80B38940  60 00 00 00 */	nop 
lbl_80B38944:
/* 80B38944  38 00 00 00 */	li r0, 0
/* 80B38948  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B3894C  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80B38950  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B38954  90 7D 0D CC */	stw r3, 0xdcc(r29)
/* 80B38958  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80B3895C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B38960  90 1D 0D D4 */	stw r0, 0xdd4(r29)
/* 80B38964  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B38968  4B 82 96 B0 */	b __ptmf_test
/* 80B3896C  2C 03 00 00 */	cmpwi r3, 0
/* 80B38970  41 82 00 18 */	beq lbl_80B38988
/* 80B38974  7F A3 EB 78 */	mr r3, r29
/* 80B38978  38 80 00 00 */	li r4, 0
/* 80B3897C  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B38980  4B 82 97 04 */	b __ptmf_scall
/* 80B38984  60 00 00 00 */	nop 
lbl_80B38988:
/* 80B38988  38 60 00 01 */	li r3, 1
/* 80B3898C  39 61 00 70 */	addi r11, r1, 0x70
/* 80B38990  4B 82 98 98 */	b _restgpr_29
/* 80B38994  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B38998  7C 08 03 A6 */	mtlr r0
/* 80B3899C  38 21 00 70 */	addi r1, r1, 0x70
/* 80B389A0  4E 80 00 20 */	blr 
