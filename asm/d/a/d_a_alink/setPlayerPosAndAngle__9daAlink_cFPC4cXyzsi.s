lbl_800B221C:
/* 800B221C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B2220  7C 08 02 A6 */	mflr r0
/* 800B2224  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B2228  39 61 00 20 */	addi r11, r1, 0x20
/* 800B222C  48 2A FF AD */	bl _savegpr_28
/* 800B2230  7C 7F 1B 78 */	mr r31, r3
/* 800B2234  7C 9C 23 78 */	mr r28, r4
/* 800B2238  7C BD 2B 78 */	mr r29, r5
/* 800B223C  7C DE 33 78 */	mr r30, r6
/* 800B2240  48 06 39 E1 */	bl checkEventRun__9daAlink_cCFv
/* 800B2244  2C 03 00 00 */	cmpwi r3, 0
/* 800B2248  40 82 00 18 */	bne lbl_800B2260
/* 800B224C  2C 1E 00 00 */	cmpwi r30, 0
/* 800B2250  40 82 00 10 */	bne lbl_800B2260
/* 800B2254  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800B2258  28 00 00 00 */	cmplwi r0, 0
/* 800B225C  41 82 01 88 */	beq lbl_800B23E4
lbl_800B2260:
/* 800B2260  28 1C 00 00 */	cmplwi r28, 0
/* 800B2264  41 82 00 78 */	beq lbl_800B22DC
/* 800B2268  C0 1C 00 00 */	lfs f0, 0(r28)
/* 800B226C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800B2270  C0 1C 00 04 */	lfs f0, 4(r28)
/* 800B2274  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800B2278  C0 1C 00 08 */	lfs f0, 8(r28)
/* 800B227C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800B2280  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800B2284  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 800B2288  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800B228C  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 800B2290  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800B2294  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 800B2298  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800B229C  D0 1F 37 98 */	stfs f0, 0x3798(r31)
/* 800B22A0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800B22A4  D0 1F 37 9C */	stfs f0, 0x379c(r31)
/* 800B22A8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800B22AC  D0 1F 37 A0 */	stfs f0, 0x37a0(r31)
/* 800B22B0  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800B22B4  64 00 00 80 */	oris r0, r0, 0x80
/* 800B22B8  90 1F 05 88 */	stw r0, 0x588(r31)
/* 800B22BC  80 1F 05 90 */	lwz r0, 0x590(r31)
/* 800B22C0  60 00 01 00 */	ori r0, r0, 0x100
/* 800B22C4  90 1F 05 90 */	stw r0, 0x590(r31)
/* 800B22C8  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 800B22CC  28 00 00 59 */	cmplwi r0, 0x59
/* 800B22D0  41 82 00 0C */	beq lbl_800B22DC
/* 800B22D4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B22D8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_800B22DC:
/* 800B22DC  B3 BF 04 E6 */	sth r29, 0x4e6(r31)
/* 800B22E0  B3 BF 04 DE */	sth r29, 0x4de(r31)
/* 800B22E4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800B22E8  B0 1F 2F E6 */	sth r0, 0x2fe6(r31)
/* 800B22EC  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800B22F0  28 00 01 45 */	cmplwi r0, 0x145
/* 800B22F4  41 82 00 0C */	beq lbl_800B2300
/* 800B22F8  28 00 00 E2 */	cmplwi r0, 0xe2
/* 800B22FC  40 82 00 2C */	bne lbl_800B2328
lbl_800B2300:
/* 800B2300  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B2304  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B2308  40 82 00 20 */	bne lbl_800B2328
/* 800B230C  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 800B2310  2C 00 00 00 */	cmpwi r0, 0
/* 800B2314  41 82 00 14 */	beq lbl_800B2328
/* 800B2318  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800B231C  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 800B2320  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800B2324  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
lbl_800B2328:
/* 800B2328  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800B232C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800B2330  41 82 00 1C */	beq lbl_800B234C
/* 800B2334  C0 3F 36 AC */	lfs f1, 0x36ac(r31)
/* 800B2338  48 1B 5E AD */	bl cBgW_CheckBGround__Ff
/* 800B233C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B2340  41 82 00 0C */	beq lbl_800B234C
/* 800B2344  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800B2348  B0 1F 31 18 */	sth r0, 0x3118(r31)
lbl_800B234C:
/* 800B234C  7F E3 FB 78 */	mr r3, r31
/* 800B2350  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800B2354  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800B2358  7D 89 03 A6 */	mtctr r12
/* 800B235C  4E 80 04 21 */	bctrl 
/* 800B2360  28 03 00 00 */	cmplwi r3, 0
/* 800B2364  41 82 00 28 */	beq lbl_800B238C
/* 800B2368  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B236C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B2370  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 800B2374  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800B2378  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 800B237C  39 83 18 E0 */	addi r12, r3, 0x18e0
/* 800B2380  48 2A FD 05 */	bl __ptmf_scall
/* 800B2384  60 00 00 00 */	nop 
/* 800B2388  48 00 00 54 */	b lbl_800B23DC
lbl_800B238C:
/* 800B238C  7F E3 FB 78 */	mr r3, r31
/* 800B2390  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800B2394  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 800B2398  7D 89 03 A6 */	mtctr r12
/* 800B239C  4E 80 04 21 */	bctrl 
/* 800B23A0  28 03 00 00 */	cmplwi r3, 0
/* 800B23A4  41 82 00 38 */	beq lbl_800B23DC
/* 800B23A8  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800B23AC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800B23B0  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 800B23B4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800B23B8  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 800B23BC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800B23C0  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 800B23C4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800B23C8  B0 03 04 E6 */	sth r0, 0x4e6(r3)
/* 800B23CC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800B23D0  B0 03 04 DE */	sth r0, 0x4de(r3)
/* 800B23D4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B23D8  D0 03 04 FC */	stfs f0, 0x4fc(r3)
lbl_800B23DC:
/* 800B23DC  38 7F 08 14 */	addi r3, r31, 0x814
/* 800B23E0  48 1B 15 7D */	bl ClrCcMove__9cCcD_SttsFv
lbl_800B23E4:
/* 800B23E4  39 61 00 20 */	addi r11, r1, 0x20
/* 800B23E8  48 2A FE 3D */	bl _restgpr_28
/* 800B23EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B23F0  7C 08 03 A6 */	mtlr r0
/* 800B23F4  38 21 00 20 */	addi r1, r1, 0x20
/* 800B23F8  4E 80 00 20 */	blr 
