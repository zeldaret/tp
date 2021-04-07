lbl_805036E0:
/* 805036E0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805036E4  7C 08 02 A6 */	mflr r0
/* 805036E8  90 01 00 54 */	stw r0, 0x54(r1)
/* 805036EC  39 61 00 50 */	addi r11, r1, 0x50
/* 805036F0  4B E5 EA E9 */	bl _savegpr_28
/* 805036F4  7C 7E 1B 78 */	mr r30, r3
/* 805036F8  3C 80 80 50 */	lis r4, lit_3999@ha /* 0x805046DC@ha */
/* 805036FC  3B A4 46 DC */	addi r29, r4, lit_3999@l /* 0x805046DC@l */
/* 80503700  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80503704  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80503708  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 8050370C  7C 00 07 74 */	extsb r0, r0
/* 80503710  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80503714  7C 84 02 14 */	add r4, r4, r0
/* 80503718  83 E4 5D 74 */	lwz r31, 0x5d74(r4)
/* 8050371C  3B 80 00 00 */	li r28, 0
/* 80503720  A8 03 0C D4 */	lha r0, 0xcd4(r3)
/* 80503724  2C 00 00 01 */	cmpwi r0, 1
/* 80503728  41 82 00 18 */	beq lbl_80503740
/* 8050372C  40 80 00 08 */	bge lbl_80503734
/* 80503730  48 00 01 4C */	b lbl_8050387C
lbl_80503734:
/* 80503734  2C 00 00 03 */	cmpwi r0, 3
/* 80503738  40 80 01 44 */	bge lbl_8050387C
/* 8050373C  48 00 00 CC */	b lbl_80503808
lbl_80503740:
/* 80503740  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80503744  28 00 00 02 */	cmplwi r0, 2
/* 80503748  41 82 00 28 */	beq lbl_80503770
/* 8050374C  38 80 00 02 */	li r4, 2
/* 80503750  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80503754  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80503758  38 C0 00 00 */	li r6, 0
/* 8050375C  4B B1 81 AD */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80503760  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 80503764  60 00 00 02 */	ori r0, r0, 2
/* 80503768  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 8050376C  48 00 02 00 */	b lbl_8050396C
lbl_80503770:
/* 80503770  38 7F 02 48 */	addi r3, r31, 0x248
/* 80503774  4B C5 DD 5D */	bl Stop__9dCamera_cFv
/* 80503778  38 00 00 02 */	li r0, 2
/* 8050377C  B0 1E 0C D4 */	sth r0, 0xcd4(r30)
/* 80503780  38 00 00 00 */	li r0, 0
/* 80503784  B0 1E 0C D6 */	sth r0, 0xcd6(r30)
/* 80503788  C0 1D 00 DC */	lfs f0, 0xdc(r29)
/* 8050378C  D0 1E 0C F0 */	stfs f0, 0xcf0(r30)
/* 80503790  38 7F 02 48 */	addi r3, r31, 0x248
/* 80503794  38 80 00 03 */	li r4, 3
/* 80503798  4B C5 F8 75 */	bl SetTrimSize__9dCamera_cFl
/* 8050379C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805037A0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805037A4  80 A4 5D AC */	lwz r5, 0x5dac(r4)
/* 805037A8  38 00 00 03 */	li r0, 3
/* 805037AC  B0 05 06 04 */	sth r0, 0x604(r5)
/* 805037B0  38 60 00 00 */	li r3, 0
/* 805037B4  90 65 06 0C */	stw r3, 0x60c(r5)
/* 805037B8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 805037BC  38 00 00 01 */	li r0, 1
/* 805037C0  90 04 06 14 */	stw r0, 0x614(r4)
/* 805037C4  90 64 06 0C */	stw r3, 0x60c(r4)
/* 805037C8  90 64 06 10 */	stw r3, 0x610(r4)
/* 805037CC  B0 64 06 0A */	sth r3, 0x60a(r4)
/* 805037D0  C0 1E 05 A4 */	lfs f0, 0x5a4(r30)
/* 805037D4  D0 1E 0C E4 */	stfs f0, 0xce4(r30)
/* 805037D8  C0 1E 05 AC */	lfs f0, 0x5ac(r30)
/* 805037DC  D0 1E 0C EC */	stfs f0, 0xcec(r30)
/* 805037E0  C0 3E 05 A8 */	lfs f1, 0x5a8(r30)
/* 805037E4  C0 1D 00 B4 */	lfs f0, 0xb4(r29)
/* 805037E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 805037EC  D0 1E 0C E8 */	stfs f0, 0xce8(r30)
/* 805037F0  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 805037F4  D0 1E 0C D8 */	stfs f0, 0xcd8(r30)
/* 805037F8  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 805037FC  D0 1E 0C DC */	stfs f0, 0xcdc(r30)
/* 80503800  C0 1D 00 E8 */	lfs f0, 0xe8(r29)
/* 80503804  D0 1E 0C E0 */	stfs f0, 0xce0(r30)
lbl_80503808:
/* 80503808  38 7E 0C E4 */	addi r3, r30, 0xce4
/* 8050380C  C0 3E 05 A4 */	lfs f1, 0x5a4(r30)
/* 80503810  C0 5D 00 EC */	lfs f2, 0xec(r29)
/* 80503814  C0 7D 00 3C */	lfs f3, 0x3c(r29)
/* 80503818  4B D6 C2 25 */	bl cLib_addCalc2__FPffff
/* 8050381C  38 7E 0C E8 */	addi r3, r30, 0xce8
/* 80503820  C0 3E 05 A8 */	lfs f1, 0x5a8(r30)
/* 80503824  C0 1D 00 B4 */	lfs f0, 0xb4(r29)
/* 80503828  EC 21 00 28 */	fsubs f1, f1, f0
/* 8050382C  C0 5D 00 EC */	lfs f2, 0xec(r29)
/* 80503830  C0 7D 00 3C */	lfs f3, 0x3c(r29)
/* 80503834  4B D6 C2 09 */	bl cLib_addCalc2__FPffff
/* 80503838  38 7E 0C EC */	addi r3, r30, 0xcec
/* 8050383C  C0 3E 05 AC */	lfs f1, 0x5ac(r30)
/* 80503840  C0 5D 00 EC */	lfs f2, 0xec(r29)
/* 80503844  C0 7D 00 3C */	lfs f3, 0x3c(r29)
/* 80503848  4B D6 C1 F5 */	bl cLib_addCalc2__FPffff
/* 8050384C  A8 1E 0C D6 */	lha r0, 0xcd6(r30)
/* 80503850  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80503854  40 81 00 18 */	ble lbl_8050386C
/* 80503858  38 7E 0C F0 */	addi r3, r30, 0xcf0
/* 8050385C  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 80503860  C0 5D 00 F0 */	lfs f2, 0xf0(r29)
/* 80503864  C0 7D 00 EC */	lfs f3, 0xec(r29)
/* 80503868  4B D6 C1 D5 */	bl cLib_addCalc2__FPffff
lbl_8050386C:
/* 8050386C  A8 1E 0C D6 */	lha r0, 0xcd6(r30)
/* 80503870  2C 00 00 78 */	cmpwi r0, 0x78
/* 80503874  40 82 00 08 */	bne lbl_8050387C
/* 80503878  3B 80 00 01 */	li r28, 1
lbl_8050387C:
/* 8050387C  7F 80 07 75 */	extsb. r0, r28
/* 80503880  41 82 00 8C */	beq lbl_8050390C
/* 80503884  C0 1E 0C E4 */	lfs f0, 0xce4(r30)
/* 80503888  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8050388C  C0 1E 0C E8 */	lfs f0, 0xce8(r30)
/* 80503890  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80503894  C0 1E 0C EC */	lfs f0, 0xcec(r30)
/* 80503898  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8050389C  C0 1E 0C D8 */	lfs f0, 0xcd8(r30)
/* 805038A0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805038A4  C0 1E 0C DC */	lfs f0, 0xcdc(r30)
/* 805038A8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805038AC  C0 1E 0C E0 */	lfs f0, 0xce0(r30)
/* 805038B0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805038B4  38 7F 02 48 */	addi r3, r31, 0x248
/* 805038B8  38 81 00 2C */	addi r4, r1, 0x2c
/* 805038BC  38 A1 00 20 */	addi r5, r1, 0x20
/* 805038C0  4B C7 D3 59 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 805038C4  38 7F 02 48 */	addi r3, r31, 0x248
/* 805038C8  4B C5 DB E5 */	bl Start__9dCamera_cFv
/* 805038CC  38 7F 02 48 */	addi r3, r31, 0x248
/* 805038D0  38 80 00 00 */	li r4, 0
/* 805038D4  4B C5 F7 39 */	bl SetTrimSize__9dCamera_cFl
/* 805038D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805038DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805038E0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805038E4  4B B3 EB 85 */	bl reset__14dEvt_control_cFv
/* 805038E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805038EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805038F0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805038F4  38 00 00 02 */	li r0, 2
/* 805038F8  B0 03 06 04 */	sth r0, 0x604(r3)
/* 805038FC  38 00 00 01 */	li r0, 1
/* 80503900  90 03 06 14 */	stw r0, 0x614(r3)
/* 80503904  38 00 00 00 */	li r0, 0
/* 80503908  B0 1E 0C D4 */	sth r0, 0xcd4(r30)
lbl_8050390C:
/* 8050390C  A8 1E 0C D4 */	lha r0, 0xcd4(r30)
/* 80503910  2C 00 00 00 */	cmpwi r0, 0
/* 80503914  41 82 00 58 */	beq lbl_8050396C
/* 80503918  C0 1E 0C E4 */	lfs f0, 0xce4(r30)
/* 8050391C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80503920  C0 1E 0C E8 */	lfs f0, 0xce8(r30)
/* 80503924  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80503928  C0 1E 0C EC */	lfs f0, 0xcec(r30)
/* 8050392C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80503930  C0 1E 0C D8 */	lfs f0, 0xcd8(r30)
/* 80503934  D0 01 00 08 */	stfs f0, 8(r1)
/* 80503938  C0 1E 0C DC */	lfs f0, 0xcdc(r30)
/* 8050393C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80503940  C0 1E 0C E0 */	lfs f0, 0xce0(r30)
/* 80503944  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80503948  38 7F 02 48 */	addi r3, r31, 0x248
/* 8050394C  38 81 00 14 */	addi r4, r1, 0x14
/* 80503950  38 A1 00 08 */	addi r5, r1, 8
/* 80503954  C0 3E 0C F0 */	lfs f1, 0xcf0(r30)
/* 80503958  38 C0 00 00 */	li r6, 0
/* 8050395C  4B C7 D1 85 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 80503960  A8 7E 0C D6 */	lha r3, 0xcd6(r30)
/* 80503964  38 03 00 01 */	addi r0, r3, 1
/* 80503968  B0 1E 0C D6 */	sth r0, 0xcd6(r30)
lbl_8050396C:
/* 8050396C  39 61 00 50 */	addi r11, r1, 0x50
/* 80503970  4B E5 E8 B5 */	bl _restgpr_28
/* 80503974  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80503978  7C 08 03 A6 */	mtlr r0
/* 8050397C  38 21 00 50 */	addi r1, r1, 0x50
/* 80503980  4E 80 00 20 */	blr 
