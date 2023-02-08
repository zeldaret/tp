lbl_80AF9748:
/* 80AF9748  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AF974C  7C 08 02 A6 */	mflr r0
/* 80AF9750  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF9754  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF9758  4B 86 8A 85 */	bl _savegpr_29
/* 80AF975C  7C 7F 1B 78 */	mr r31, r3
/* 80AF9760  4B 65 91 69 */	bl initialize__8daNpcF_cFv
/* 80AF9764  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80AF9768  4B 65 6F D1 */	bl initialize__15daNpcF_MatAnm_cFv
/* 80AF976C  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80AF9770  4B 65 78 C9 */	bl initialize__15daNpcF_Lookat_cFv
/* 80AF9774  3B A0 00 00 */	li r29, 0
/* 80AF9778  3B C0 00 00 */	li r30, 0
lbl_80AF977C:
/* 80AF977C  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 80AF9780  7C 7F 1A 14 */	add r3, r31, r3
/* 80AF9784  4B 65 6F 2D */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80AF9788  3B BD 00 01 */	addi r29, r29, 1
/* 80AF978C  2C 1D 00 03 */	cmpwi r29, 3
/* 80AF9790  3B DE 00 08 */	addi r30, r30, 8
/* 80AF9794  41 80 FF E8 */	blt lbl_80AF977C
/* 80AF9798  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AF979C  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80AF97A0  80 64 00 00 */	lwz r3, 0(r4)
/* 80AF97A4  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF97A8  90 7F 0D D0 */	stw r3, 0xdd0(r31)
/* 80AF97AC  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80AF97B0  80 04 00 08 */	lwz r0, 8(r4)
/* 80AF97B4  90 1F 0D D8 */	stw r0, 0xdd8(r31)
/* 80AF97B8  80 64 00 00 */	lwz r3, 0(r4)
/* 80AF97BC  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF97C0  90 7F 0D DC */	stw r3, 0xddc(r31)
/* 80AF97C4  90 1F 0D E0 */	stw r0, 0xde0(r31)
/* 80AF97C8  80 04 00 08 */	lwz r0, 8(r4)
/* 80AF97CC  90 1F 0D E4 */	stw r0, 0xde4(r31)
/* 80AF97D0  38 60 00 00 */	li r3, 0
/* 80AF97D4  90 7F 0E 04 */	stw r3, 0xe04(r31)
/* 80AF97D8  90 7F 0E 08 */	stw r3, 0xe08(r31)
/* 80AF97DC  90 7F 0E 0C */	stw r3, 0xe0c(r31)
/* 80AF97E0  90 7F 0E 10 */	stw r3, 0xe10(r31)
/* 80AF97E4  38 00 FF FF */	li r0, -1
/* 80AF97E8  B0 1F 0E 18 */	sth r0, 0xe18(r31)
/* 80AF97EC  B0 7F 0E 1A */	sth r3, 0xe1a(r31)
/* 80AF97F0  98 7F 0E 1C */	stb r3, 0xe1c(r31)
/* 80AF97F4  90 1F 0E 00 */	stw r0, 0xe00(r31)
/* 80AF97F8  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80AF97FC  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80AF9800  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80AF9804  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80AF9808  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80AF980C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80AF9810  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AF9814  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80AF9818  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AF981C  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80AF9820  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AF9824  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80AF9828  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80AF982C  B0 7F 04 DC */	sth r3, 0x4dc(r31)
/* 80AF9830  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80AF9834  B0 7F 04 E0 */	sth r3, 0x4e0(r31)
/* 80AF9838  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80AF983C  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 80AF9840  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AF9844  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 80AF9848  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80AF984C  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 80AF9850  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80AF9854  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80AF9858  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AF985C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80AF9860  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80AF9864  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80AF9868  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80AF986C  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 80AF9870  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AF9874  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80AF9878  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80AF987C  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 80AF9880  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 80AF9884  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 80AF9888  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80AF988C  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80AF9890  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 80AF9894  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 80AF9898  3C 60 80 B0 */	lis r3, lit_4297@ha /* 0x80AFBE88@ha */
/* 80AF989C  C0 03 BE 88 */	lfs f0, lit_4297@l(r3)  /* 0x80AFBE88@l */
/* 80AF98A0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80AF98A4  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80AF98A8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80AF98AC  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80AF98B0  38 00 00 01 */	li r0, 1
/* 80AF98B4  98 1F 09 EE */	stb r0, 0x9ee(r31)
/* 80AF98B8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF98BC  4B 86 89 6D */	bl _restgpr_29
/* 80AF98C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AF98C4  7C 08 03 A6 */	mtlr r0
/* 80AF98C8  38 21 00 20 */	addi r1, r1, 0x20
/* 80AF98CC  4E 80 00 20 */	blr 
