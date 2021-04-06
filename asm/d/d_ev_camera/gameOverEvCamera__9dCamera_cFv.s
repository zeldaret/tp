lbl_80090514:
/* 80090514  94 21 FA B0 */	stwu r1, -0x550(r1)
/* 80090518  7C 08 02 A6 */	mflr r0
/* 8009051C  90 01 05 54 */	stw r0, 0x554(r1)
/* 80090520  DB E1 05 40 */	stfd f31, 0x540(r1)
/* 80090524  F3 E1 05 48 */	psq_st f31, 1352(r1), 0, 0 /* qr0 */
/* 80090528  39 61 05 40 */	addi r11, r1, 0x540
/* 8009052C  48 2D 1C A5 */	bl _savegpr_26
/* 80090530  7C 7A 1B 78 */	mr r26, r3
/* 80090534  83 83 01 80 */	lwz r28, 0x180(r3)
/* 80090538  80 8D 8A 98 */	lwz r4, m_midnaActor__9daPy_py_c(r13)
/* 8009053C  80 03 01 74 */	lwz r0, 0x174(r3)
/* 80090540  28 00 00 00 */	cmplwi r0, 0
/* 80090544  40 82 00 28 */	bne lbl_8009056C
/* 80090548  38 60 00 00 */	li r3, 0
/* 8009054C  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 80090550  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80090554  41 82 00 14 */	beq lbl_80090568
/* 80090558  80 04 08 90 */	lwz r0, 0x890(r4)
/* 8009055C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80090560  40 82 00 08 */	bne lbl_80090568
/* 80090564  38 60 00 01 */	li r3, 1
lbl_80090568:
/* 80090568  98 7A 04 24 */	stb r3, 0x424(r26)
lbl_8009056C:
/* 8009056C  C0 22 8E B8 */	lfs f1, lit_5141(r2)
/* 80090570  D0 21 03 98 */	stfs f1, 0x398(r1)
/* 80090574  C0 02 8F 44 */	lfs f0, lit_8178(r2)
/* 80090578  D0 01 03 9C */	stfs f0, 0x39c(r1)
/* 8009057C  D0 21 03 A0 */	stfs f1, 0x3a0(r1)
/* 80090580  C0 02 8F 48 */	lfs f0, lit_8179(r2)
/* 80090584  D0 01 02 F0 */	stfs f0, 0x2f0(r1)
/* 80090588  C0 02 8F 4C */	lfs f0, lit_8180(r2)
/* 8009058C  D0 01 02 F4 */	stfs f0, 0x2f4(r1)
/* 80090590  C0 02 8F 50 */	lfs f0, lit_8181(r2)
/* 80090594  D0 01 02 F8 */	stfs f0, 0x2f8(r1)
/* 80090598  38 61 04 D8 */	addi r3, r1, 0x4d8
/* 8009059C  38 81 02 F0 */	addi r4, r1, 0x2f0
/* 800905A0  48 00 72 55 */	bl __ct__4cXyzFRC4cXyz
/* 800905A4  C0 02 8F 54 */	lfs f0, lit_8182(r2)
/* 800905A8  D0 01 02 E4 */	stfs f0, 0x2e4(r1)
/* 800905AC  C0 02 8F 58 */	lfs f0, lit_8183(r2)
/* 800905B0  D0 01 02 E8 */	stfs f0, 0x2e8(r1)
/* 800905B4  C0 02 8F 5C */	lfs f0, lit_8184(r2)
/* 800905B8  D0 01 02 EC */	stfs f0, 0x2ec(r1)
/* 800905BC  38 61 04 E4 */	addi r3, r1, 0x4e4
/* 800905C0  38 81 02 E4 */	addi r4, r1, 0x2e4
/* 800905C4  48 00 72 31 */	bl __ct__4cXyzFRC4cXyz
/* 800905C8  C0 02 8F 50 */	lfs f0, lit_8181(r2)
/* 800905CC  D0 01 02 D8 */	stfs f0, 0x2d8(r1)
/* 800905D0  C0 02 8F 60 */	lfs f0, lit_8185(r2)
/* 800905D4  D0 01 02 DC */	stfs f0, 0x2dc(r1)
/* 800905D8  C0 02 8F 64 */	lfs f0, lit_8186(r2)
/* 800905DC  D0 01 02 E0 */	stfs f0, 0x2e0(r1)
/* 800905E0  38 61 04 F0 */	addi r3, r1, 0x4f0
/* 800905E4  38 81 02 D8 */	addi r4, r1, 0x2d8
/* 800905E8  48 00 72 0D */	bl __ct__4cXyzFRC4cXyz
/* 800905EC  C0 02 8F 48 */	lfs f0, lit_8179(r2)
/* 800905F0  D0 01 02 CC */	stfs f0, 0x2cc(r1)
/* 800905F4  C0 02 8F 50 */	lfs f0, lit_8181(r2)
/* 800905F8  D0 01 02 D0 */	stfs f0, 0x2d0(r1)
/* 800905FC  C0 02 8F 68 */	lfs f0, lit_8187(r2)
/* 80090600  D0 01 02 D4 */	stfs f0, 0x2d4(r1)
/* 80090604  38 61 04 FC */	addi r3, r1, 0x4fc
/* 80090608  38 81 02 CC */	addi r4, r1, 0x2cc
/* 8009060C  48 00 71 E9 */	bl __ct__4cXyzFRC4cXyz
/* 80090610  C0 02 8F 1C */	lfs f0, lit_7339(r2)
/* 80090614  D0 01 02 C0 */	stfs f0, 0x2c0(r1)
/* 80090618  C0 02 8F 6C */	lfs f0, lit_8188(r2)
/* 8009061C  D0 01 02 C4 */	stfs f0, 0x2c4(r1)
/* 80090620  C0 02 8F 70 */	lfs f0, lit_8189(r2)
/* 80090624  D0 01 02 C8 */	stfs f0, 0x2c8(r1)
/* 80090628  38 61 05 08 */	addi r3, r1, 0x508
/* 8009062C  38 81 02 C0 */	addi r4, r1, 0x2c0
/* 80090630  48 00 71 C5 */	bl __ct__4cXyzFRC4cXyz
/* 80090634  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80090638  D0 01 02 B4 */	stfs f0, 0x2b4(r1)
/* 8009063C  D0 01 02 B8 */	stfs f0, 0x2b8(r1)
/* 80090640  D0 01 02 BC */	stfs f0, 0x2bc(r1)
/* 80090644  38 61 05 14 */	addi r3, r1, 0x514
/* 80090648  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 8009064C  48 00 71 A9 */	bl __ct__4cXyzFRC4cXyz
/* 80090650  88 1A 04 24 */	lbz r0, 0x424(r26)
/* 80090654  28 00 00 00 */	cmplwi r0, 0
/* 80090658  41 82 00 0C */	beq lbl_80090664
/* 8009065C  C0 02 8F 74 */	lfs f0, lit_8190(r2)
/* 80090660  D0 01 03 9C */	stfs f0, 0x39c(r1)
lbl_80090664:
/* 80090664  C0 22 8E B8 */	lfs f1, lit_5141(r2)
/* 80090668  D0 21 03 8C */	stfs f1, 0x38c(r1)
/* 8009066C  C0 02 8F 78 */	lfs f0, lit_8191(r2)
/* 80090670  D0 01 03 90 */	stfs f0, 0x390(r1)
/* 80090674  C0 02 8F 7C */	lfs f0, lit_8192(r2)
/* 80090678  D0 01 03 94 */	stfs f0, 0x394(r1)
/* 8009067C  D0 21 02 A8 */	stfs f1, 0x2a8(r1)
/* 80090680  C0 02 8F 80 */	lfs f0, lit_8193(r2)
/* 80090684  D0 01 02 AC */	stfs f0, 0x2ac(r1)
/* 80090688  C0 02 8F 84 */	lfs f0, lit_8194(r2)
/* 8009068C  D0 01 02 B0 */	stfs f0, 0x2b0(r1)
/* 80090690  38 61 04 A8 */	addi r3, r1, 0x4a8
/* 80090694  38 81 02 A8 */	addi r4, r1, 0x2a8
/* 80090698  48 00 71 5D */	bl __ct__4cXyzFRC4cXyz
/* 8009069C  C0 02 8F 88 */	lfs f0, lit_8195(r2)
/* 800906A0  D0 01 02 9C */	stfs f0, 0x29c(r1)
/* 800906A4  C0 02 8F 8C */	lfs f0, lit_8196(r2)
/* 800906A8  D0 01 02 A0 */	stfs f0, 0x2a0(r1)
/* 800906AC  C0 02 8F 90 */	lfs f0, lit_8197(r2)
/* 800906B0  D0 01 02 A4 */	stfs f0, 0x2a4(r1)
/* 800906B4  38 61 04 B4 */	addi r3, r1, 0x4b4
/* 800906B8  38 81 02 9C */	addi r4, r1, 0x29c
/* 800906BC  48 00 71 39 */	bl __ct__4cXyzFRC4cXyz
/* 800906C0  C0 02 8F 5C */	lfs f0, lit_8184(r2)
/* 800906C4  D0 01 02 90 */	stfs f0, 0x290(r1)
/* 800906C8  C0 02 8F 1C */	lfs f0, lit_7339(r2)
/* 800906CC  D0 01 02 94 */	stfs f0, 0x294(r1)
/* 800906D0  C0 02 8F 94 */	lfs f0, lit_8198(r2)
/* 800906D4  D0 01 02 98 */	stfs f0, 0x298(r1)
/* 800906D8  38 61 04 C0 */	addi r3, r1, 0x4c0
/* 800906DC  38 81 02 90 */	addi r4, r1, 0x290
/* 800906E0  48 00 71 15 */	bl __ct__4cXyzFRC4cXyz
/* 800906E4  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 800906E8  D0 01 02 84 */	stfs f0, 0x284(r1)
/* 800906EC  D0 01 02 88 */	stfs f0, 0x288(r1)
/* 800906F0  D0 01 02 8C */	stfs f0, 0x28c(r1)
/* 800906F4  38 61 04 CC */	addi r3, r1, 0x4cc
/* 800906F8  38 81 02 84 */	addi r4, r1, 0x284
/* 800906FC  48 00 70 F9 */	bl __ct__4cXyzFRC4cXyz
/* 80090700  C0 22 8E B8 */	lfs f1, lit_5141(r2)
/* 80090704  D0 21 03 80 */	stfs f1, 0x380(r1)
/* 80090708  C0 02 8F 98 */	lfs f0, lit_8199(r2)
/* 8009070C  D0 01 03 84 */	stfs f0, 0x384(r1)
/* 80090710  C0 02 8F 44 */	lfs f0, lit_8178(r2)
/* 80090714  D0 01 03 88 */	stfs f0, 0x388(r1)
/* 80090718  D0 21 02 78 */	stfs f1, 0x278(r1)
/* 8009071C  C0 02 8F 48 */	lfs f0, lit_8179(r2)
/* 80090720  D0 01 02 7C */	stfs f0, 0x27c(r1)
/* 80090724  C0 02 8F 20 */	lfs f0, lit_7340(r2)
/* 80090728  D0 01 02 80 */	stfs f0, 0x280(r1)
/* 8009072C  38 61 04 78 */	addi r3, r1, 0x478
/* 80090730  38 81 02 78 */	addi r4, r1, 0x278
/* 80090734  48 00 70 C1 */	bl __ct__4cXyzFRC4cXyz
/* 80090738  C0 02 8F 9C */	lfs f0, lit_8200(r2)
/* 8009073C  D0 01 02 6C */	stfs f0, 0x26c(r1)
/* 80090740  C0 02 8F A0 */	lfs f0, lit_8201(r2)
/* 80090744  D0 01 02 70 */	stfs f0, 0x270(r1)
/* 80090748  C0 02 8F A4 */	lfs f0, lit_8202(r2)
/* 8009074C  D0 01 02 74 */	stfs f0, 0x274(r1)
/* 80090750  38 61 04 84 */	addi r3, r1, 0x484
/* 80090754  38 81 02 6C */	addi r4, r1, 0x26c
/* 80090758  48 00 70 9D */	bl __ct__4cXyzFRC4cXyz
/* 8009075C  C0 02 8F 28 */	lfs f0, lit_7342(r2)
/* 80090760  D0 01 02 60 */	stfs f0, 0x260(r1)
/* 80090764  C0 02 8F 1C */	lfs f0, lit_7339(r2)
/* 80090768  D0 01 02 64 */	stfs f0, 0x264(r1)
/* 8009076C  C0 02 8F 4C */	lfs f0, lit_8180(r2)
/* 80090770  D0 01 02 68 */	stfs f0, 0x268(r1)
/* 80090774  38 61 04 90 */	addi r3, r1, 0x490
/* 80090778  38 81 02 60 */	addi r4, r1, 0x260
/* 8009077C  48 00 70 79 */	bl __ct__4cXyzFRC4cXyz
/* 80090780  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80090784  D0 01 02 54 */	stfs f0, 0x254(r1)
/* 80090788  D0 01 02 58 */	stfs f0, 0x258(r1)
/* 8009078C  D0 01 02 5C */	stfs f0, 0x25c(r1)
/* 80090790  38 61 04 9C */	addi r3, r1, 0x49c
/* 80090794  38 81 02 54 */	addi r4, r1, 0x254
/* 80090798  48 00 70 5D */	bl __ct__4cXyzFRC4cXyz
/* 8009079C  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 800907A0  D0 01 03 74 */	stfs f0, 0x374(r1)
/* 800907A4  C0 02 8F 24 */	lfs f0, lit_7341(r2)
/* 800907A8  D0 01 03 78 */	stfs f0, 0x378(r1)
/* 800907AC  C0 02 8F 98 */	lfs f0, lit_8199(r2)
/* 800907B0  D0 01 03 7C */	stfs f0, 0x37c(r1)
/* 800907B4  C0 02 8F A8 */	lfs f0, lit_8203(r2)
/* 800907B8  D0 01 02 48 */	stfs f0, 0x248(r1)
/* 800907BC  C0 02 8F 74 */	lfs f0, lit_8190(r2)
/* 800907C0  D0 01 02 4C */	stfs f0, 0x24c(r1)
/* 800907C4  C0 02 8F 94 */	lfs f0, lit_8198(r2)
/* 800907C8  D0 01 02 50 */	stfs f0, 0x250(r1)
/* 800907CC  38 61 04 48 */	addi r3, r1, 0x448
/* 800907D0  38 81 02 48 */	addi r4, r1, 0x248
/* 800907D4  48 00 70 21 */	bl __ct__4cXyzFRC4cXyz
/* 800907D8  C0 02 8F 60 */	lfs f0, lit_8185(r2)
/* 800907DC  D0 01 02 3C */	stfs f0, 0x23c(r1)
/* 800907E0  C0 02 8F AC */	lfs f0, lit_8204(r2)
/* 800907E4  D0 01 02 40 */	stfs f0, 0x240(r1)
/* 800907E8  C0 02 8F B0 */	lfs f0, lit_8205(r2)
/* 800907EC  D0 01 02 44 */	stfs f0, 0x244(r1)
/* 800907F0  38 61 04 54 */	addi r3, r1, 0x454
/* 800907F4  38 81 02 3C */	addi r4, r1, 0x23c
/* 800907F8  48 00 6F FD */	bl __ct__4cXyzFRC4cXyz
/* 800907FC  C0 02 8F B4 */	lfs f0, lit_8206(r2)
/* 80090800  D0 01 02 30 */	stfs f0, 0x230(r1)
/* 80090804  C0 02 8F B8 */	lfs f0, lit_8207(r2)
/* 80090808  D0 01 02 34 */	stfs f0, 0x234(r1)
/* 8009080C  C0 02 8F BC */	lfs f0, lit_8208(r2)
/* 80090810  D0 01 02 38 */	stfs f0, 0x238(r1)
/* 80090814  38 61 04 60 */	addi r3, r1, 0x460
/* 80090818  38 81 02 30 */	addi r4, r1, 0x230
/* 8009081C  48 00 6F D9 */	bl __ct__4cXyzFRC4cXyz
/* 80090820  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80090824  D0 01 02 24 */	stfs f0, 0x224(r1)
/* 80090828  D0 01 02 28 */	stfs f0, 0x228(r1)
/* 8009082C  D0 01 02 2C */	stfs f0, 0x22c(r1)
/* 80090830  38 61 04 6C */	addi r3, r1, 0x46c
/* 80090834  38 81 02 24 */	addi r4, r1, 0x224
/* 80090838  48 00 6F BD */	bl __ct__4cXyzFRC4cXyz
/* 8009083C  38 61 03 68 */	addi r3, r1, 0x368
/* 80090840  80 1A 01 90 */	lwz r0, 0x190(r26)
/* 80090844  2C 00 00 01 */	cmpwi r0, 1
/* 80090848  41 82 00 0C */	beq lbl_80090854
/* 8009084C  38 81 03 8C */	addi r4, r1, 0x38c
/* 80090850  48 00 00 18 */	b lbl_80090868
lbl_80090854:
/* 80090854  88 1A 04 24 */	lbz r0, 0x424(r26)
/* 80090858  28 00 00 00 */	cmplwi r0, 0
/* 8009085C  38 81 03 80 */	addi r4, r1, 0x380
/* 80090860  41 82 00 08 */	beq lbl_80090868
/* 80090864  38 81 03 74 */	addi r4, r1, 0x374
lbl_80090868:
/* 80090868  48 00 6F 8D */	bl __ct__4cXyzFRC4cXyz
/* 8009086C  80 1A 01 90 */	lwz r0, 0x190(r26)
/* 80090870  2C 00 00 01 */	cmpwi r0, 1
/* 80090874  41 82 00 0C */	beq lbl_80090880
/* 80090878  3B E1 04 A8 */	addi r31, r1, 0x4a8
/* 8009087C  48 00 00 18 */	b lbl_80090894
lbl_80090880:
/* 80090880  88 1A 04 24 */	lbz r0, 0x424(r26)
/* 80090884  28 00 00 00 */	cmplwi r0, 0
/* 80090888  3B E1 04 78 */	addi r31, r1, 0x478
/* 8009088C  41 82 00 08 */	beq lbl_80090894
/* 80090890  3B E1 04 48 */	addi r31, r1, 0x448
lbl_80090894:
/* 80090894  C0 22 8E B8 */	lfs f1, lit_5141(r2)
/* 80090898  D0 21 03 44 */	stfs f1, 0x344(r1)
/* 8009089C  C0 02 8F C0 */	lfs f0, lit_8209(r2)
/* 800908A0  D0 01 03 48 */	stfs f0, 0x348(r1)
/* 800908A4  D0 21 03 4C */	stfs f1, 0x34c(r1)
/* 800908A8  D0 21 02 18 */	stfs f1, 0x218(r1)
/* 800908AC  C0 02 8F C4 */	lfs f0, lit_8210(r2)
/* 800908B0  D0 01 02 1C */	stfs f0, 0x21c(r1)
/* 800908B4  C0 02 8F C8 */	lfs f0, lit_8211(r2)
/* 800908B8  D0 01 02 20 */	stfs f0, 0x220(r1)
/* 800908BC  38 61 04 18 */	addi r3, r1, 0x418
/* 800908C0  38 81 02 18 */	addi r4, r1, 0x218
/* 800908C4  48 00 6F 31 */	bl __ct__4cXyzFRC4cXyz
/* 800908C8  C0 02 8F CC */	lfs f0, lit_8212(r2)
/* 800908CC  D0 01 02 0C */	stfs f0, 0x20c(r1)
/* 800908D0  C0 02 8F D0 */	lfs f0, lit_8213(r2)
/* 800908D4  D0 01 02 10 */	stfs f0, 0x210(r1)
/* 800908D8  C0 02 8F D4 */	lfs f0, lit_8214(r2)
/* 800908DC  D0 01 02 14 */	stfs f0, 0x214(r1)
/* 800908E0  38 61 04 24 */	addi r3, r1, 0x424
/* 800908E4  38 81 02 0C */	addi r4, r1, 0x20c
/* 800908E8  48 00 6F 0D */	bl __ct__4cXyzFRC4cXyz
/* 800908EC  C0 02 8F D8 */	lfs f0, lit_8215(r2)
/* 800908F0  D0 01 02 00 */	stfs f0, 0x200(r1)
/* 800908F4  C0 02 8F 94 */	lfs f0, lit_8198(r2)
/* 800908F8  D0 01 02 04 */	stfs f0, 0x204(r1)
/* 800908FC  C0 02 8F 34 */	lfs f0, lit_7345(r2)
/* 80090900  D0 01 02 08 */	stfs f0, 0x208(r1)
/* 80090904  38 61 04 30 */	addi r3, r1, 0x430
/* 80090908  38 81 02 00 */	addi r4, r1, 0x200
/* 8009090C  48 00 6E E9 */	bl __ct__4cXyzFRC4cXyz
/* 80090910  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80090914  D0 01 01 F4 */	stfs f0, 0x1f4(r1)
/* 80090918  D0 01 01 F8 */	stfs f0, 0x1f8(r1)
/* 8009091C  D0 01 01 FC */	stfs f0, 0x1fc(r1)
/* 80090920  38 61 04 3C */	addi r3, r1, 0x43c
/* 80090924  38 81 01 F4 */	addi r4, r1, 0x1f4
/* 80090928  48 00 6E CD */	bl __ct__4cXyzFRC4cXyz
/* 8009092C  C0 22 8E B8 */	lfs f1, lit_5141(r2)
/* 80090930  D0 21 03 38 */	stfs f1, 0x338(r1)
/* 80090934  C0 02 8F 44 */	lfs f0, lit_8178(r2)
/* 80090938  D0 01 03 3C */	stfs f0, 0x33c(r1)
/* 8009093C  C0 02 8F 4C */	lfs f0, lit_8180(r2)
/* 80090940  D0 01 03 40 */	stfs f0, 0x340(r1)
/* 80090944  D0 21 01 E8 */	stfs f1, 0x1e8(r1)
/* 80090948  C0 02 8F D4 */	lfs f0, lit_8214(r2)
/* 8009094C  D0 01 01 EC */	stfs f0, 0x1ec(r1)
/* 80090950  C0 02 8F BC */	lfs f0, lit_8208(r2)
/* 80090954  D0 01 01 F0 */	stfs f0, 0x1f0(r1)
/* 80090958  38 61 03 E8 */	addi r3, r1, 0x3e8
/* 8009095C  38 81 01 E8 */	addi r4, r1, 0x1e8
/* 80090960  48 00 6E 95 */	bl __ct__4cXyzFRC4cXyz
/* 80090964  C0 02 8F 78 */	lfs f0, lit_8191(r2)
/* 80090968  D0 01 01 DC */	stfs f0, 0x1dc(r1)
/* 8009096C  C0 02 8F DC */	lfs f0, lit_8216(r2)
/* 80090970  D0 01 01 E0 */	stfs f0, 0x1e0(r1)
/* 80090974  C0 02 8F C0 */	lfs f0, lit_8209(r2)
/* 80090978  D0 01 01 E4 */	stfs f0, 0x1e4(r1)
/* 8009097C  38 61 03 F4 */	addi r3, r1, 0x3f4
/* 80090980  38 81 01 DC */	addi r4, r1, 0x1dc
/* 80090984  48 00 6E 71 */	bl __ct__4cXyzFRC4cXyz
/* 80090988  C0 02 8F 68 */	lfs f0, lit_8187(r2)
/* 8009098C  D0 01 01 D0 */	stfs f0, 0x1d0(r1)
/* 80090990  C0 02 8F 94 */	lfs f0, lit_8198(r2)
/* 80090994  D0 01 01 D4 */	stfs f0, 0x1d4(r1)
/* 80090998  C0 02 8F 20 */	lfs f0, lit_7340(r2)
/* 8009099C  D0 01 01 D8 */	stfs f0, 0x1d8(r1)
/* 800909A0  38 61 04 00 */	addi r3, r1, 0x400
/* 800909A4  38 81 01 D0 */	addi r4, r1, 0x1d0
/* 800909A8  48 00 6E 4D */	bl __ct__4cXyzFRC4cXyz
/* 800909AC  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 800909B0  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 800909B4  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 800909B8  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 800909BC  38 61 04 0C */	addi r3, r1, 0x40c
/* 800909C0  38 81 01 C4 */	addi r4, r1, 0x1c4
/* 800909C4  48 00 6E 31 */	bl __ct__4cXyzFRC4cXyz
/* 800909C8  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 800909CC  D0 01 03 2C */	stfs f0, 0x32c(r1)
/* 800909D0  C0 02 8F 40 */	lfs f0, lit_7357(r2)
/* 800909D4  D0 01 03 30 */	stfs f0, 0x330(r1)
/* 800909D8  C0 02 8F CC */	lfs f0, lit_8212(r2)
/* 800909DC  D0 01 03 34 */	stfs f0, 0x334(r1)
/* 800909E0  C0 02 8F 68 */	lfs f0, lit_8187(r2)
/* 800909E4  D0 01 01 B8 */	stfs f0, 0x1b8(r1)
/* 800909E8  C0 02 8F D8 */	lfs f0, lit_8215(r2)
/* 800909EC  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 800909F0  C0 02 8F 50 */	lfs f0, lit_8181(r2)
/* 800909F4  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 800909F8  38 61 03 B8 */	addi r3, r1, 0x3b8
/* 800909FC  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 80090A00  48 00 6D F5 */	bl __ct__4cXyzFRC4cXyz
/* 80090A04  C0 02 8F E0 */	lfs f0, lit_8217(r2)
/* 80090A08  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 80090A0C  C0 02 8F C8 */	lfs f0, lit_8211(r2)
/* 80090A10  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 80090A14  C0 02 8F E4 */	lfs f0, lit_8218(r2)
/* 80090A18  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 80090A1C  38 61 03 C4 */	addi r3, r1, 0x3c4
/* 80090A20  38 81 01 AC */	addi r4, r1, 0x1ac
/* 80090A24  48 00 6D D1 */	bl __ct__4cXyzFRC4cXyz
/* 80090A28  C0 02 8F E4 */	lfs f0, lit_8218(r2)
/* 80090A2C  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 80090A30  C0 02 8F E8 */	lfs f0, lit_8219(r2)
/* 80090A34  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 80090A38  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80090A3C  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 80090A40  38 61 03 D0 */	addi r3, r1, 0x3d0
/* 80090A44  38 81 01 A0 */	addi r4, r1, 0x1a0
/* 80090A48  48 00 6D AD */	bl __ct__4cXyzFRC4cXyz
/* 80090A4C  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80090A50  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 80090A54  D0 01 01 98 */	stfs f0, 0x198(r1)
/* 80090A58  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 80090A5C  38 61 03 DC */	addi r3, r1, 0x3dc
/* 80090A60  38 81 01 94 */	addi r4, r1, 0x194
/* 80090A64  48 00 6D 91 */	bl __ct__4cXyzFRC4cXyz
/* 80090A68  38 61 03 20 */	addi r3, r1, 0x320
/* 80090A6C  80 1A 01 90 */	lwz r0, 0x190(r26)
/* 80090A70  2C 00 00 01 */	cmpwi r0, 1
/* 80090A74  41 82 00 0C */	beq lbl_80090A80
/* 80090A78  38 81 03 44 */	addi r4, r1, 0x344
/* 80090A7C  48 00 00 18 */	b lbl_80090A94
lbl_80090A80:
/* 80090A80  88 1A 04 24 */	lbz r0, 0x424(r26)
/* 80090A84  28 00 00 00 */	cmplwi r0, 0
/* 80090A88  38 81 03 38 */	addi r4, r1, 0x338
/* 80090A8C  41 82 00 08 */	beq lbl_80090A94
/* 80090A90  38 81 03 2C */	addi r4, r1, 0x32c
lbl_80090A94:
/* 80090A94  48 00 6D 61 */	bl __ct__4cXyzFRC4cXyz
/* 80090A98  80 1A 01 90 */	lwz r0, 0x190(r26)
/* 80090A9C  2C 00 00 01 */	cmpwi r0, 1
/* 80090AA0  41 82 00 0C */	beq lbl_80090AAC
/* 80090AA4  3B C1 04 18 */	addi r30, r1, 0x418
/* 80090AA8  48 00 00 18 */	b lbl_80090AC0
lbl_80090AAC:
/* 80090AAC  88 1A 04 24 */	lbz r0, 0x424(r26)
/* 80090AB0  28 00 00 00 */	cmplwi r0, 0
/* 80090AB4  3B C1 03 E8 */	addi r30, r1, 0x3e8
/* 80090AB8  41 82 00 08 */	beq lbl_80090AC0
/* 80090ABC  3B C1 03 B8 */	addi r30, r1, 0x3b8
lbl_80090AC0:
/* 80090AC0  3B 60 00 00 */	li r27, 0
/* 80090AC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80090AC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80090ACC  3B A3 5F 18 */	addi r29, r3, 0x5f18
/* 80090AD0  80 1A 01 7C */	lwz r0, 0x17c(r26)
/* 80090AD4  54 00 20 36 */	slwi r0, r0, 4
/* 80090AD8  7C 1D 00 2E */	lwzx r0, r29, r0
/* 80090ADC  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80090AE0  40 82 00 10 */	bne lbl_80090AF0
/* 80090AE4  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 80090AE8  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80090AEC  41 82 00 34 */	beq lbl_80090B20
lbl_80090AF0:
/* 80090AF0  38 61 01 88 */	addi r3, r1, 0x188
/* 80090AF4  7F 44 D3 78 */	mr r4, r26
/* 80090AF8  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 80090AFC  48 00 6C 21 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80090B00  C0 5A 03 24 */	lfs f2, 0x324(r26)
/* 80090B04  C0 22 8F 68 */	lfs f1, lit_8187(r2)
/* 80090B08  C0 01 01 8C */	lfs f0, 0x18c(r1)
/* 80090B0C  EC 01 00 2A */	fadds f0, f1, f0
/* 80090B10  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80090B14  4C 41 13 82 */	cror 2, 1, 2
/* 80090B18  40 82 00 08 */	bne lbl_80090B20
/* 80090B1C  3B 60 00 01 */	li r27, 1
lbl_80090B20:
/* 80090B20  80 1A 01 74 */	lwz r0, 0x174(r26)
/* 80090B24  28 00 00 00 */	cmplwi r0, 0
/* 80090B28  40 82 00 D8 */	bne lbl_80090C00
/* 80090B2C  38 60 00 00 */	li r3, 0
/* 80090B30  90 7A 03 E8 */	stw r3, 0x3e8(r26)
/* 80090B34  90 7A 03 EC */	stw r3, 0x3ec(r26)
/* 80090B38  80 1A 00 A8 */	lwz r0, 0xa8(r26)
/* 80090B3C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80090B40  41 82 00 0C */	beq lbl_80090B4C
/* 80090B44  90 7A 03 F0 */	stw r3, 0x3f0(r26)
/* 80090B48  48 00 00 0C */	b lbl_80090B54
lbl_80090B4C:
/* 80090B4C  38 00 00 01 */	li r0, 1
/* 80090B50  90 1A 03 F0 */	stw r0, 0x3f0(r26)
lbl_80090B54:
/* 80090B54  80 1A 01 7C */	lwz r0, 0x17c(r26)
/* 80090B58  54 00 20 36 */	slwi r0, r0, 4
/* 80090B5C  7C 1D 00 2E */	lwzx r0, r29, r0
/* 80090B60  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80090B64  41 82 00 0C */	beq lbl_80090B70
/* 80090B68  38 00 00 32 */	li r0, 0x32
/* 80090B6C  90 1A 03 E8 */	stw r0, 0x3e8(r26)
lbl_80090B70:
/* 80090B70  38 00 00 01 */	li r0, 1
/* 80090B74  98 1A 01 58 */	stb r0, 0x158(r26)
/* 80090B78  38 61 01 7C */	addi r3, r1, 0x17c
/* 80090B7C  7F 44 D3 78 */	mr r4, r26
/* 80090B80  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 80090B84  48 00 6B 99 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80090B88  38 61 01 70 */	addi r3, r1, 0x170
/* 80090B8C  38 9A 00 70 */	addi r4, r26, 0x70
/* 80090B90  38 A1 01 7C */	addi r5, r1, 0x17c
/* 80090B94  48 1D 5F A1 */	bl __mi__4cXyzCFRC3Vec
/* 80090B98  38 61 03 14 */	addi r3, r1, 0x314
/* 80090B9C  38 81 01 70 */	addi r4, r1, 0x170
/* 80090BA0  48 00 6C 55 */	bl __ct__4cXyzFRC4cXyz
/* 80090BA4  38 61 00 18 */	addi r3, r1, 0x18
/* 80090BA8  80 9A 01 80 */	lwz r4, 0x180(r26)
/* 80090BAC  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 80090BB0  48 1E 03 E9 */	bl __ct__7cSAngleFs
/* 80090BB4  38 61 00 14 */	addi r3, r1, 0x14
/* 80090BB8  38 81 00 18 */	addi r4, r1, 0x18
/* 80090BBC  48 1E 05 8D */	bl __mi__7cSAngleCFv
/* 80090BC0  38 61 01 64 */	addi r3, r1, 0x164
/* 80090BC4  38 81 03 14 */	addi r4, r1, 0x314
/* 80090BC8  38 A1 00 14 */	addi r5, r1, 0x14
/* 80090BCC  4B FF 77 B9 */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 80090BD0  38 61 03 14 */	addi r3, r1, 0x314
/* 80090BD4  38 81 01 64 */	addi r4, r1, 0x164
/* 80090BD8  48 00 6C 01 */	bl __as__4cXyzFRC4cXyz
/* 80090BDC  38 7E 00 24 */	addi r3, r30, 0x24
/* 80090BE0  38 81 03 14 */	addi r4, r1, 0x314
/* 80090BE4  48 00 6B F5 */	bl __as__4cXyzFRC4cXyz
/* 80090BE8  7C 64 1B 78 */	mr r4, r3
/* 80090BEC  38 7F 00 24 */	addi r3, r31, 0x24
/* 80090BF0  48 00 6B E9 */	bl __as__4cXyzFRC4cXyz
/* 80090BF4  7C 64 1B 78 */	mr r4, r3
/* 80090BF8  38 61 05 14 */	addi r3, r1, 0x514
/* 80090BFC  48 00 6B DD */	bl __as__4cXyzFRC4cXyz
lbl_80090C00:
/* 80090C00  38 61 01 58 */	addi r3, r1, 0x158
/* 80090C04  7F 44 D3 78 */	mr r4, r26
/* 80090C08  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 80090C0C  48 00 6B 11 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80090C10  38 61 03 08 */	addi r3, r1, 0x308
/* 80090C14  38 81 01 58 */	addi r4, r1, 0x158
/* 80090C18  48 00 6B DD */	bl __ct__4cXyzFRC4cXyz
/* 80090C1C  3B 80 00 00 */	li r28, 0
/* 80090C20  80 1A 03 E8 */	lwz r0, 0x3e8(r26)
/* 80090C24  2C 00 00 05 */	cmpwi r0, 5
/* 80090C28  41 82 07 AC */	beq lbl_800913D4
/* 80090C2C  40 80 00 2C */	bge lbl_80090C58
/* 80090C30  2C 00 00 02 */	cmpwi r0, 2
/* 80090C34  41 82 02 98 */	beq lbl_80090ECC
/* 80090C38  40 80 00 14 */	bge lbl_80090C4C
/* 80090C3C  2C 00 00 00 */	cmpwi r0, 0
/* 80090C40  41 82 00 44 */	beq lbl_80090C84
/* 80090C44  40 80 00 E4 */	bge lbl_80090D28
/* 80090C48  48 00 00 3C */	b lbl_80090C84
lbl_80090C4C:
/* 80090C4C  2C 00 00 04 */	cmpwi r0, 4
/* 80090C50  40 80 04 B4 */	bge lbl_80091104
/* 80090C54  48 00 02 C4 */	b lbl_80090F18
lbl_80090C58:
/* 80090C58  2C 00 00 34 */	cmpwi r0, 0x34
/* 80090C5C  41 82 06 30 */	beq lbl_8009128C
/* 80090C60  40 80 00 14 */	bge lbl_80090C74
/* 80090C64  2C 00 00 32 */	cmpwi r0, 0x32
/* 80090C68  41 82 04 C0 */	beq lbl_80091128
/* 80090C6C  40 80 04 C4 */	bge lbl_80091130
/* 80090C70  48 00 00 14 */	b lbl_80090C84
lbl_80090C74:
/* 80090C74  2C 00 00 52 */	cmpwi r0, 0x52
/* 80090C78  40 80 00 0C */	bge lbl_80090C84
/* 80090C7C  2C 00 00 50 */	cmpwi r0, 0x50
/* 80090C80  40 80 06 2C */	bge lbl_800912AC
lbl_80090C84:
/* 80090C84  7F 43 D3 78 */	mr r3, r26
/* 80090C88  38 9A 03 F4 */	addi r4, r26, 0x3f4
/* 80090C8C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 80090C90  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 80090C94  38 A5 01 7B */	addi r5, r5, 0x17b
/* 80090C98  38 C0 00 00 */	li r6, 0
/* 80090C9C  4B FF 83 F1 */	bl getEvIntData__9dCamera_cFPiPci
/* 80090CA0  80 1A 03 F4 */	lwz r0, 0x3f4(r26)
/* 80090CA4  2C 00 00 01 */	cmpwi r0, 1
/* 80090CA8  40 82 00 78 */	bne lbl_80090D20
/* 80090CAC  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80090CB0  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80090CB4  90 01 03 B4 */	stw r0, 0x3b4(r1)
/* 80090CB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80090CBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80090CC0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80090CC4  38 9A 03 40 */	addi r4, r26, 0x340
/* 80090CC8  38 A1 03 A4 */	addi r5, r1, 0x3a4
/* 80090CCC  4B FE 3A 79 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80090CD0  C0 21 03 A8 */	lfs f1, 0x3a8(r1)
/* 80090CD4  C0 02 8F EC */	lfs f0, lit_8220(r2)
/* 80090CD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80090CDC  4C 41 13 82 */	cror 2, 1, 2
/* 80090CE0  40 82 00 10 */	bne lbl_80090CF0
/* 80090CE4  38 00 00 50 */	li r0, 0x50
/* 80090CE8  90 1A 03 E8 */	stw r0, 0x3e8(r26)
/* 80090CEC  48 00 00 0C */	b lbl_80090CF8
lbl_80090CF0:
/* 80090CF0  38 00 00 51 */	li r0, 0x51
/* 80090CF4  90 1A 03 E8 */	stw r0, 0x3e8(r26)
lbl_80090CF8:
/* 80090CF8  38 7A 03 F8 */	addi r3, r26, 0x3f8
/* 80090CFC  38 9A 00 30 */	addi r4, r26, 0x30
/* 80090D00  48 00 6A D9 */	bl __as__4cXyzFRC4cXyz
/* 80090D04  38 7A 04 04 */	addi r3, r26, 0x404
/* 80090D08  38 9A 00 28 */	addi r4, r26, 0x28
/* 80090D0C  4B FF DA 69 */	bl __as__7cSGlobeFRC7cSGlobe
/* 80090D10  38 61 03 A4 */	addi r3, r1, 0x3a4
/* 80090D14  38 80 FF FF */	li r4, -1
/* 80090D18  4B F8 CE 79 */	bl __dt__8cM3dGPlaFv
/* 80090D1C  48 00 06 B8 */	b lbl_800913D4
lbl_80090D20:
/* 80090D20  38 00 00 01 */	li r0, 1
/* 80090D24  90 1A 03 E8 */	stw r0, 0x3e8(r26)
lbl_80090D28:
/* 80090D28  38 61 01 4C */	addi r3, r1, 0x14c
/* 80090D2C  7F 44 D3 78 */	mr r4, r26
/* 80090D30  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 80090D34  38 C1 03 98 */	addi r6, r1, 0x398
/* 80090D38  48 0D 40 35 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80090D3C  38 61 03 5C */	addi r3, r1, 0x35c
/* 80090D40  38 81 01 4C */	addi r4, r1, 0x14c
/* 80090D44  48 00 6A 95 */	bl __as__4cXyzFRC4cXyz
/* 80090D48  3B C0 00 00 */	li r30, 0
/* 80090D4C  3B 80 00 00 */	li r28, 0
lbl_80090D50:
/* 80090D50  80 1A 03 F0 */	lwz r0, 0x3f0(r26)
/* 80090D54  2C 00 00 00 */	cmpwi r0, 0
/* 80090D58  41 82 00 14 */	beq lbl_80090D6C
/* 80090D5C  38 61 04 D8 */	addi r3, r1, 0x4d8
/* 80090D60  7C 03 E4 2E */	lfsx f0, r3, r28
/* 80090D64  FC 00 00 50 */	fneg f0, f0
/* 80090D68  7C 03 E5 2E */	stfsx f0, r3, r28
lbl_80090D6C:
/* 80090D6C  38 61 01 40 */	addi r3, r1, 0x140
/* 80090D70  7F 44 D3 78 */	mr r4, r26
/* 80090D74  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 80090D78  3B A1 04 D8 */	addi r29, r1, 0x4d8
/* 80090D7C  7F BD E2 14 */	add r29, r29, r28
/* 80090D80  7F A6 EB 78 */	mr r6, r29
/* 80090D84  48 0D 3F E9 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80090D88  38 61 03 50 */	addi r3, r1, 0x350
/* 80090D8C  38 81 01 40 */	addi r4, r1, 0x140
/* 80090D90  48 00 6A 49 */	bl __as__4cXyzFRC4cXyz
/* 80090D94  38 61 01 34 */	addi r3, r1, 0x134
/* 80090D98  7F 44 D3 78 */	mr r4, r26
/* 80090D9C  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 80090DA0  48 00 69 BD */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80090DA4  C0 41 03 54 */	lfs f2, 0x354(r1)
/* 80090DA8  C0 3A 03 D8 */	lfs f1, 0x3d8(r26)
/* 80090DAC  C0 01 01 38 */	lfs f0, 0x138(r1)
/* 80090DB0  EC 01 00 2A */	fadds f0, f1, f0
/* 80090DB4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80090DB8  40 80 00 24 */	bge lbl_80090DDC
/* 80090DBC  38 61 01 28 */	addi r3, r1, 0x128
/* 80090DC0  7F 44 D3 78 */	mr r4, r26
/* 80090DC4  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 80090DC8  48 00 69 95 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80090DCC  C0 3A 03 D8 */	lfs f1, 0x3d8(r26)
/* 80090DD0  C0 01 01 2C */	lfs f0, 0x12c(r1)
/* 80090DD4  EC 01 00 2A */	fadds f0, f1, f0
/* 80090DD8  D0 01 03 54 */	stfs f0, 0x354(r1)
lbl_80090DDC:
/* 80090DDC  7F 43 D3 78 */	mr r3, r26
/* 80090DE0  38 81 03 08 */	addi r4, r1, 0x308
/* 80090DE4  38 A1 03 50 */	addi r5, r1, 0x350
/* 80090DE8  38 C0 40 B7 */	li r6, 0x40b7
/* 80090DEC  48 0D 4D 05 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80090DF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80090DF4  41 82 00 B0 */	beq lbl_80090EA4
/* 80090DF8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80090DFC  FC 00 00 50 */	fneg f0, f0
/* 80090E00  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80090E04  38 61 01 1C */	addi r3, r1, 0x11c
/* 80090E08  7F 44 D3 78 */	mr r4, r26
/* 80090E0C  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 80090E10  7F A6 EB 78 */	mr r6, r29
/* 80090E14  48 0D 3F 59 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80090E18  38 61 03 50 */	addi r3, r1, 0x350
/* 80090E1C  38 81 01 1C */	addi r4, r1, 0x11c
/* 80090E20  48 00 69 B9 */	bl __as__4cXyzFRC4cXyz
/* 80090E24  38 61 01 10 */	addi r3, r1, 0x110
/* 80090E28  7F 44 D3 78 */	mr r4, r26
/* 80090E2C  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 80090E30  48 00 69 2D */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80090E34  C0 41 03 54 */	lfs f2, 0x354(r1)
/* 80090E38  C0 3A 03 D8 */	lfs f1, 0x3d8(r26)
/* 80090E3C  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 80090E40  EC 01 00 2A */	fadds f0, f1, f0
/* 80090E44  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80090E48  40 80 00 24 */	bge lbl_80090E6C
/* 80090E4C  38 61 01 04 */	addi r3, r1, 0x104
/* 80090E50  7F 44 D3 78 */	mr r4, r26
/* 80090E54  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 80090E58  48 00 69 05 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80090E5C  C0 3A 03 D8 */	lfs f1, 0x3d8(r26)
/* 80090E60  C0 01 01 08 */	lfs f0, 0x108(r1)
/* 80090E64  EC 01 00 2A */	fadds f0, f1, f0
/* 80090E68  D0 01 03 54 */	stfs f0, 0x354(r1)
lbl_80090E6C:
/* 80090E6C  7F 43 D3 78 */	mr r3, r26
/* 80090E70  38 81 03 08 */	addi r4, r1, 0x308
/* 80090E74  38 A1 03 50 */	addi r5, r1, 0x350
/* 80090E78  38 C0 40 B7 */	li r6, 0x40b7
/* 80090E7C  48 0D 4C 75 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80090E80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80090E84  41 82 00 20 */	beq lbl_80090EA4
/* 80090E88  80 1A 03 F0 */	lwz r0, 0x3f0(r26)
/* 80090E8C  68 00 00 01 */	xori r0, r0, 1
/* 80090E90  90 1A 03 F0 */	stw r0, 0x3f0(r26)
/* 80090E94  3B DE 00 01 */	addi r30, r30, 1
/* 80090E98  2C 1E 00 05 */	cmpwi r30, 5
/* 80090E9C  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80090EA0  41 80 FE B0 */	blt lbl_80090D50
lbl_80090EA4:
/* 80090EA4  38 7A 00 64 */	addi r3, r26, 0x64
/* 80090EA8  38 81 03 5C */	addi r4, r1, 0x35c
/* 80090EAC  48 00 69 2D */	bl __as__4cXyzFRC4cXyz
/* 80090EB0  38 7A 00 70 */	addi r3, r26, 0x70
/* 80090EB4  38 81 03 50 */	addi r4, r1, 0x350
/* 80090EB8  48 00 69 21 */	bl __as__4cXyzFRC4cXyz
/* 80090EBC  80 7A 03 E8 */	lwz r3, 0x3e8(r26)
/* 80090EC0  38 03 00 01 */	addi r0, r3, 1
/* 80090EC4  90 1A 03 E8 */	stw r0, 0x3e8(r26)
/* 80090EC8  3B 80 00 01 */	li r28, 1
lbl_80090ECC:
/* 80090ECC  80 1A 03 EC */	lwz r0, 0x3ec(r26)
/* 80090ED0  2C 00 00 5A */	cmpwi r0, 0x5a
/* 80090ED4  40 82 05 00 */	bne lbl_800913D4
/* 80090ED8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80090EDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80090EE0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80090EE4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80090EE8  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80090EEC  7D 89 03 A6 */	mtctr r12
/* 80090EF0  4E 80 04 21 */	bctrl 
/* 80090EF4  28 03 00 00 */	cmplwi r3, 0
/* 80090EF8  40 82 04 DC */	bne lbl_800913D4
/* 80090EFC  80 7A 03 E8 */	lwz r3, 0x3e8(r26)
/* 80090F00  38 03 00 01 */	addi r0, r3, 1
/* 80090F04  90 1A 03 E8 */	stw r0, 0x3e8(r26)
/* 80090F08  38 00 00 00 */	li r0, 0
/* 80090F0C  90 1A 03 EC */	stw r0, 0x3ec(r26)
/* 80090F10  C0 02 8F 5C */	lfs f0, lit_8184(r2)
/* 80090F14  D0 1A 00 80 */	stfs f0, 0x80(r26)
lbl_80090F18:
/* 80090F18  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80090F1C  7F 44 D3 78 */	mr r4, r26
/* 80090F20  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 80090F24  38 C1 03 68 */	addi r6, r1, 0x368
/* 80090F28  48 0D 3E 45 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80090F2C  38 61 03 5C */	addi r3, r1, 0x35c
/* 80090F30  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80090F34  48 00 68 A5 */	bl __as__4cXyzFRC4cXyz
/* 80090F38  7F 43 D3 78 */	mr r3, r26
/* 80090F3C  38 81 03 08 */	addi r4, r1, 0x308
/* 80090F40  38 A1 03 5C */	addi r5, r1, 0x35c
/* 80090F44  38 C1 02 FC */	addi r6, r1, 0x2fc
/* 80090F48  38 E0 40 B7 */	li r7, 0x40b7
/* 80090F4C  48 0D 4A A9 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP4cXyzUl
/* 80090F50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80090F54  41 82 00 2C */	beq lbl_80090F80
/* 80090F58  38 61 00 EC */	addi r3, r1, 0xec
/* 80090F5C  38 9A 00 5C */	addi r4, r26, 0x5c
/* 80090F60  48 1E 0B D1 */	bl Norm__7cSGlobeCFv
/* 80090F64  38 61 00 E0 */	addi r3, r1, 0xe0
/* 80090F68  38 81 02 FC */	addi r4, r1, 0x2fc
/* 80090F6C  38 A1 00 EC */	addi r5, r1, 0xec
/* 80090F70  48 1D 5B 75 */	bl __pl__4cXyzCFRC3Vec
/* 80090F74  38 61 03 5C */	addi r3, r1, 0x35c
/* 80090F78  38 81 00 E0 */	addi r4, r1, 0xe0
/* 80090F7C  48 00 68 5D */	bl __as__4cXyzFRC4cXyz
lbl_80090F80:
/* 80090F80  3B C0 00 00 */	li r30, 0
/* 80090F84  3B 80 00 00 */	li r28, 0
lbl_80090F88:
/* 80090F88  80 1A 03 F0 */	lwz r0, 0x3f0(r26)
/* 80090F8C  2C 00 00 00 */	cmpwi r0, 0
/* 80090F90  41 82 00 10 */	beq lbl_80090FA0
/* 80090F94  7C 1F E4 2E */	lfsx f0, r31, r28
/* 80090F98  FC 00 00 50 */	fneg f0, f0
/* 80090F9C  7C 1F E5 2E */	stfsx f0, r31, r28
lbl_80090FA0:
/* 80090FA0  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80090FA4  7F 44 D3 78 */	mr r4, r26
/* 80090FA8  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 80090FAC  7F BF E2 14 */	add r29, r31, r28
/* 80090FB0  7F A6 EB 78 */	mr r6, r29
/* 80090FB4  48 0D 3D B9 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80090FB8  38 61 03 50 */	addi r3, r1, 0x350
/* 80090FBC  38 81 00 D4 */	addi r4, r1, 0xd4
/* 80090FC0  48 00 68 19 */	bl __as__4cXyzFRC4cXyz
/* 80090FC4  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80090FC8  7F 44 D3 78 */	mr r4, r26
/* 80090FCC  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 80090FD0  48 00 67 8D */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80090FD4  C0 41 03 54 */	lfs f2, 0x354(r1)
/* 80090FD8  C0 3A 03 D8 */	lfs f1, 0x3d8(r26)
/* 80090FDC  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 80090FE0  EC 01 00 2A */	fadds f0, f1, f0
/* 80090FE4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80090FE8  40 80 00 24 */	bge lbl_8009100C
/* 80090FEC  38 61 00 BC */	addi r3, r1, 0xbc
/* 80090FF0  7F 44 D3 78 */	mr r4, r26
/* 80090FF4  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 80090FF8  48 00 67 65 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80090FFC  C0 3A 03 D8 */	lfs f1, 0x3d8(r26)
/* 80091000  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80091004  EC 01 00 2A */	fadds f0, f1, f0
/* 80091008  D0 01 03 54 */	stfs f0, 0x354(r1)
lbl_8009100C:
/* 8009100C  7F 43 D3 78 */	mr r3, r26
/* 80091010  38 81 03 08 */	addi r4, r1, 0x308
/* 80091014  38 A1 03 50 */	addi r5, r1, 0x350
/* 80091018  38 C0 40 B7 */	li r6, 0x40b7
/* 8009101C  48 0D 4A D5 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80091020  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80091024  41 82 00 B0 */	beq lbl_800910D4
/* 80091028  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8009102C  FC 00 00 50 */	fneg f0, f0
/* 80091030  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80091034  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80091038  7F 44 D3 78 */	mr r4, r26
/* 8009103C  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 80091040  7F A6 EB 78 */	mr r6, r29
/* 80091044  48 0D 3D 29 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80091048  38 61 03 50 */	addi r3, r1, 0x350
/* 8009104C  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80091050  48 00 67 89 */	bl __as__4cXyzFRC4cXyz
/* 80091054  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80091058  7F 44 D3 78 */	mr r4, r26
/* 8009105C  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 80091060  48 00 66 FD */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80091064  C0 41 03 54 */	lfs f2, 0x354(r1)
/* 80091068  C0 3A 03 D8 */	lfs f1, 0x3d8(r26)
/* 8009106C  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80091070  EC 01 00 2A */	fadds f0, f1, f0
/* 80091074  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80091078  40 80 00 24 */	bge lbl_8009109C
/* 8009107C  38 61 00 98 */	addi r3, r1, 0x98
/* 80091080  7F 44 D3 78 */	mr r4, r26
/* 80091084  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 80091088  48 00 66 D5 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8009108C  C0 3A 03 D8 */	lfs f1, 0x3d8(r26)
/* 80091090  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80091094  EC 01 00 2A */	fadds f0, f1, f0
/* 80091098  D0 01 03 54 */	stfs f0, 0x354(r1)
lbl_8009109C:
/* 8009109C  7F 43 D3 78 */	mr r3, r26
/* 800910A0  38 81 03 08 */	addi r4, r1, 0x308
/* 800910A4  38 A1 03 50 */	addi r5, r1, 0x350
/* 800910A8  38 C0 40 B7 */	li r6, 0x40b7
/* 800910AC  48 0D 4A 45 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 800910B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800910B4  41 82 00 20 */	beq lbl_800910D4
/* 800910B8  80 1A 03 F0 */	lwz r0, 0x3f0(r26)
/* 800910BC  68 00 00 01 */	xori r0, r0, 1
/* 800910C0  90 1A 03 F0 */	stw r0, 0x3f0(r26)
/* 800910C4  3B DE 00 01 */	addi r30, r30, 1
/* 800910C8  2C 1E 00 03 */	cmpwi r30, 3
/* 800910CC  3B 9C 00 0C */	addi r28, r28, 0xc
/* 800910D0  41 80 FE B8 */	blt lbl_80090F88
lbl_800910D4:
/* 800910D4  38 7A 00 64 */	addi r3, r26, 0x64
/* 800910D8  38 81 03 5C */	addi r4, r1, 0x35c
/* 800910DC  48 00 66 FD */	bl __as__4cXyzFRC4cXyz
/* 800910E0  38 7A 00 70 */	addi r3, r26, 0x70
/* 800910E4  38 81 03 50 */	addi r4, r1, 0x350
/* 800910E8  48 00 66 F1 */	bl __as__4cXyzFRC4cXyz
/* 800910EC  80 7A 03 E8 */	lwz r3, 0x3e8(r26)
/* 800910F0  38 03 00 01 */	addi r0, r3, 1
/* 800910F4  90 1A 03 E8 */	stw r0, 0x3e8(r26)
/* 800910F8  C0 02 8F F0 */	lfs f0, lit_8221(r2)
/* 800910FC  D0 1A 00 80 */	stfs f0, 0x80(r26)
/* 80091100  3B 80 00 01 */	li r28, 1
lbl_80091104:
/* 80091104  80 1A 03 EC */	lwz r0, 0x3ec(r26)
/* 80091108  2C 00 00 28 */	cmpwi r0, 0x28
/* 8009110C  40 82 02 C8 */	bne lbl_800913D4
/* 80091110  80 7A 03 E8 */	lwz r3, 0x3e8(r26)
/* 80091114  38 03 00 01 */	addi r0, r3, 1
/* 80091118  90 1A 03 E8 */	stw r0, 0x3e8(r26)
/* 8009111C  38 00 00 00 */	li r0, 0
/* 80091120  90 1A 03 EC */	stw r0, 0x3ec(r26)
/* 80091124  48 00 02 B0 */	b lbl_800913D4
lbl_80091128:
/* 80091128  38 00 00 33 */	li r0, 0x33
/* 8009112C  90 1A 03 E8 */	stw r0, 0x3e8(r26)
lbl_80091130:
/* 80091130  38 61 00 8C */	addi r3, r1, 0x8c
/* 80091134  7F 44 D3 78 */	mr r4, r26
/* 80091138  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 8009113C  38 C1 03 20 */	addi r6, r1, 0x320
/* 80091140  48 0D 3C 2D */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80091144  38 61 03 5C */	addi r3, r1, 0x35c
/* 80091148  38 81 00 8C */	addi r4, r1, 0x8c
/* 8009114C  48 00 66 8D */	bl __as__4cXyzFRC4cXyz
/* 80091150  7F 43 D3 78 */	mr r3, r26
/* 80091154  38 81 03 08 */	addi r4, r1, 0x308
/* 80091158  38 A1 03 5C */	addi r5, r1, 0x35c
/* 8009115C  38 C1 02 FC */	addi r6, r1, 0x2fc
/* 80091160  38 E0 40 B7 */	li r7, 0x40b7
/* 80091164  48 0D 48 91 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP4cXyzUl
/* 80091168  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8009116C  41 82 00 2C */	beq lbl_80091198
/* 80091170  38 61 00 80 */	addi r3, r1, 0x80
/* 80091174  38 9A 00 5C */	addi r4, r26, 0x5c
/* 80091178  48 1E 09 B9 */	bl Norm__7cSGlobeCFv
/* 8009117C  38 61 00 74 */	addi r3, r1, 0x74
/* 80091180  38 81 02 FC */	addi r4, r1, 0x2fc
/* 80091184  38 A1 00 80 */	addi r5, r1, 0x80
/* 80091188  48 1D 59 5D */	bl __pl__4cXyzCFRC3Vec
/* 8009118C  38 61 03 5C */	addi r3, r1, 0x35c
/* 80091190  38 81 00 74 */	addi r4, r1, 0x74
/* 80091194  48 00 66 45 */	bl __as__4cXyzFRC4cXyz
lbl_80091198:
/* 80091198  3B E0 00 00 */	li r31, 0
/* 8009119C  3B 80 00 00 */	li r28, 0
lbl_800911A0:
/* 800911A0  80 1A 03 F0 */	lwz r0, 0x3f0(r26)
/* 800911A4  2C 00 00 00 */	cmpwi r0, 0
/* 800911A8  41 82 00 10 */	beq lbl_800911B8
/* 800911AC  7C 1E E4 2E */	lfsx f0, r30, r28
/* 800911B0  FC 00 00 50 */	fneg f0, f0
/* 800911B4  7C 1E E5 2E */	stfsx f0, r30, r28
lbl_800911B8:
/* 800911B8  38 61 00 68 */	addi r3, r1, 0x68
/* 800911BC  7F 44 D3 78 */	mr r4, r26
/* 800911C0  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 800911C4  7F BE E2 14 */	add r29, r30, r28
/* 800911C8  7F A6 EB 78 */	mr r6, r29
/* 800911CC  48 0D 3B A1 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 800911D0  38 61 03 50 */	addi r3, r1, 0x350
/* 800911D4  38 81 00 68 */	addi r4, r1, 0x68
/* 800911D8  48 00 66 01 */	bl __as__4cXyzFRC4cXyz
/* 800911DC  7F 43 D3 78 */	mr r3, r26
/* 800911E0  38 81 03 08 */	addi r4, r1, 0x308
/* 800911E4  38 A1 03 50 */	addi r5, r1, 0x350
/* 800911E8  38 C0 40 B7 */	li r6, 0x40b7
/* 800911EC  48 0D 49 05 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 800911F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800911F4  41 82 00 68 */	beq lbl_8009125C
/* 800911F8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 800911FC  FC 00 00 50 */	fneg f0, f0
/* 80091200  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80091204  38 61 00 5C */	addi r3, r1, 0x5c
/* 80091208  7F 44 D3 78 */	mr r4, r26
/* 8009120C  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 80091210  7F A6 EB 78 */	mr r6, r29
/* 80091214  48 0D 3B 59 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80091218  38 61 03 50 */	addi r3, r1, 0x350
/* 8009121C  38 81 00 5C */	addi r4, r1, 0x5c
/* 80091220  48 00 65 B9 */	bl __as__4cXyzFRC4cXyz
/* 80091224  7F 43 D3 78 */	mr r3, r26
/* 80091228  38 81 03 08 */	addi r4, r1, 0x308
/* 8009122C  38 A1 03 50 */	addi r5, r1, 0x350
/* 80091230  38 C0 40 B7 */	li r6, 0x40b7
/* 80091234  48 0D 48 BD */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80091238  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8009123C  41 82 00 20 */	beq lbl_8009125C
/* 80091240  80 1A 03 F0 */	lwz r0, 0x3f0(r26)
/* 80091244  68 00 00 01 */	xori r0, r0, 1
/* 80091248  90 1A 03 F0 */	stw r0, 0x3f0(r26)
/* 8009124C  3B FF 00 01 */	addi r31, r31, 1
/* 80091250  2C 1F 00 03 */	cmpwi r31, 3
/* 80091254  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80091258  41 80 FF 48 */	blt lbl_800911A0
lbl_8009125C:
/* 8009125C  38 7A 00 64 */	addi r3, r26, 0x64
/* 80091260  38 81 03 5C */	addi r4, r1, 0x35c
/* 80091264  48 00 65 75 */	bl __as__4cXyzFRC4cXyz
/* 80091268  38 7A 00 70 */	addi r3, r26, 0x70
/* 8009126C  38 81 03 50 */	addi r4, r1, 0x350
/* 80091270  48 00 65 69 */	bl __as__4cXyzFRC4cXyz
/* 80091274  3B 80 00 01 */	li r28, 1
/* 80091278  C0 02 8F 5C */	lfs f0, lit_8184(r2)
/* 8009127C  D0 1A 00 80 */	stfs f0, 0x80(r26)
/* 80091280  80 7A 03 E8 */	lwz r3, 0x3e8(r26)
/* 80091284  38 03 00 01 */	addi r0, r3, 1
/* 80091288  90 1A 03 E8 */	stw r0, 0x3e8(r26)
lbl_8009128C:
/* 8009128C  80 1A 03 EC */	lwz r0, 0x3ec(r26)
/* 80091290  2C 00 00 A0 */	cmpwi r0, 0xa0
/* 80091294  40 82 01 40 */	bne lbl_800913D4
/* 80091298  38 00 00 05 */	li r0, 5
/* 8009129C  90 1A 03 E8 */	stw r0, 0x3e8(r26)
/* 800912A0  38 00 00 00 */	li r0, 0
/* 800912A4  90 1A 03 EC */	stw r0, 0x3ec(r26)
/* 800912A8  48 00 01 2C */	b lbl_800913D4
lbl_800912AC:
/* 800912AC  80 1A 01 90 */	lwz r0, 0x190(r26)
/* 800912B0  2C 00 00 01 */	cmpwi r0, 1
/* 800912B4  40 82 00 0C */	bne lbl_800912C0
/* 800912B8  C3 E2 8F 74 */	lfs f31, lit_8190(r2)
/* 800912BC  48 00 00 08 */	b lbl_800912C4
lbl_800912C0:
/* 800912C0  C3 E2 8F C0 */	lfs f31, lit_8209(r2)
lbl_800912C4:
/* 800912C4  88 1A 04 24 */	lbz r0, 0x424(r26)
/* 800912C8  28 00 00 00 */	cmplwi r0, 0
/* 800912CC  41 82 00 08 */	beq lbl_800912D4
/* 800912D0  C3 E2 8F 68 */	lfs f31, lit_8187(r2)
lbl_800912D4:
/* 800912D4  38 61 00 50 */	addi r3, r1, 0x50
/* 800912D8  7F 44 D3 78 */	mr r4, r26
/* 800912DC  80 BA 01 80 */	lwz r5, 0x180(r26)
/* 800912E0  48 00 64 3D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 800912E4  C0 5A 03 FC */	lfs f2, 0x3fc(r26)
/* 800912E8  C0 22 8F F4 */	lfs f1, lit_8222(r2)
/* 800912EC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 800912F0  EC 1F 00 2A */	fadds f0, f31, f0
/* 800912F4  EC 00 10 28 */	fsubs f0, f0, f2
/* 800912F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 800912FC  EC 02 00 2A */	fadds f0, f2, f0
/* 80091300  D0 1A 03 FC */	stfs f0, 0x3fc(r26)
/* 80091304  38 7A 00 64 */	addi r3, r26, 0x64
/* 80091308  38 9A 03 F8 */	addi r4, r26, 0x3f8
/* 8009130C  48 00 64 CD */	bl __as__4cXyzFRC4cXyz
/* 80091310  38 61 00 1C */	addi r3, r1, 0x1c
/* 80091314  38 9A 04 08 */	addi r4, r26, 0x408
/* 80091318  48 1D FC 51 */	bl __ct__7cSAngleFRC7cSAngle
/* 8009131C  38 61 00 10 */	addi r3, r1, 0x10
/* 80091320  80 1A 03 E8 */	lwz r0, 0x3e8(r26)
/* 80091324  2C 00 00 50 */	cmpwi r0, 0x50
/* 80091328  40 82 00 0C */	bne lbl_80091334
/* 8009132C  C0 22 8F 3C */	lfs f1, lit_7347(r2)
/* 80091330  48 00 00 08 */	b lbl_80091338
lbl_80091334:
/* 80091334  C0 22 8F F8 */	lfs f1, lit_8223(r2)
lbl_80091338:
/* 80091338  48 1D FC 91 */	bl __ct__7cSAngleFf
/* 8009133C  38 61 00 0C */	addi r3, r1, 0xc
/* 80091340  38 81 00 10 */	addi r4, r1, 0x10
/* 80091344  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80091348  48 1D FE 5D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8009134C  38 61 00 08 */	addi r3, r1, 8
/* 80091350  38 81 00 0C */	addi r4, r1, 0xc
/* 80091354  C0 22 8F FC */	lfs f1, lit_8224(r2)
/* 80091358  48 1D FF 0D */	bl __ml__7cSAngleCFf
/* 8009135C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80091360  38 81 00 08 */	addi r4, r1, 8
/* 80091364  48 1D FE 71 */	bl __apl__7cSAngleFRC7cSAngle
/* 80091368  38 7A 04 04 */	addi r3, r26, 0x404
/* 8009136C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80091370  4B FF E6 E9 */	bl V__7cSGlobeFRC7cSAngle
/* 80091374  C0 5A 04 04 */	lfs f2, 0x404(r26)
/* 80091378  C0 22 8F FC */	lfs f1, lit_8224(r2)
/* 8009137C  C0 02 90 00 */	lfs f0, lit_8225(r2)
/* 80091380  EC 00 10 28 */	fsubs f0, f0, f2
/* 80091384  EC 01 00 32 */	fmuls f0, f1, f0
/* 80091388  EC 02 00 2A */	fadds f0, f2, f0
/* 8009138C  D0 1A 04 04 */	stfs f0, 0x404(r26)
/* 80091390  C0 5A 00 80 */	lfs f2, 0x80(r26)
/* 80091394  C0 22 8F F4 */	lfs f1, lit_8222(r2)
/* 80091398  C0 02 8F 68 */	lfs f0, lit_8187(r2)
/* 8009139C  EC 00 10 28 */	fsubs f0, f0, f2
/* 800913A0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800913A4  EC 02 00 2A */	fadds f0, f2, f0
/* 800913A8  D0 1A 00 80 */	stfs f0, 0x80(r26)
/* 800913AC  38 61 00 44 */	addi r3, r1, 0x44
/* 800913B0  38 9A 04 04 */	addi r4, r26, 0x404
/* 800913B4  48 1E 07 01 */	bl Xyz__7cSGlobeCFv
/* 800913B8  38 61 00 38 */	addi r3, r1, 0x38
/* 800913BC  38 9A 00 64 */	addi r4, r26, 0x64
/* 800913C0  38 A1 00 44 */	addi r5, r1, 0x44
/* 800913C4  48 1D 57 21 */	bl __pl__4cXyzCFRC3Vec
/* 800913C8  38 7A 00 70 */	addi r3, r26, 0x70
/* 800913CC  38 81 00 38 */	addi r4, r1, 0x38
/* 800913D0  48 00 64 09 */	bl __as__4cXyzFRC4cXyz
lbl_800913D4:
/* 800913D4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 800913D8  40 82 00 3C */	bne lbl_80091414
/* 800913DC  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 800913E0  41 82 00 34 */	beq lbl_80091414
/* 800913E4  38 7A 00 64 */	addi r3, r26, 0x64
/* 800913E8  38 9A 02 B4 */	addi r4, r26, 0x2b4
/* 800913EC  7C 65 1B 78 */	mr r5, r3
/* 800913F0  48 2B 5C A1 */	bl PSVECAdd
/* 800913F4  38 61 00 2C */	addi r3, r1, 0x2c
/* 800913F8  38 9A 02 B4 */	addi r4, r26, 0x2b4
/* 800913FC  C0 22 90 04 */	lfs f1, lit_8226(r2)
/* 80091400  48 1D 57 85 */	bl __ml__4cXyzCFf
/* 80091404  38 7A 00 70 */	addi r3, r26, 0x70
/* 80091408  38 81 00 2C */	addi r4, r1, 0x2c
/* 8009140C  7C 65 1B 78 */	mr r5, r3
/* 80091410  48 2B 5C 81 */	bl PSVECAdd
lbl_80091414:
/* 80091414  38 61 00 20 */	addi r3, r1, 0x20
/* 80091418  38 9A 00 70 */	addi r4, r26, 0x70
/* 8009141C  38 BA 00 64 */	addi r5, r26, 0x64
/* 80091420  48 1D 57 15 */	bl __mi__4cXyzCFRC3Vec
/* 80091424  38 7A 00 5C */	addi r3, r26, 0x5c
/* 80091428  38 81 00 20 */	addi r4, r1, 0x20
/* 8009142C  48 1E 06 45 */	bl Val__7cSGlobeFRC4cXyz
/* 80091430  80 7A 03 EC */	lwz r3, 0x3ec(r26)
/* 80091434  38 03 00 01 */	addi r0, r3, 1
/* 80091438  90 1A 03 EC */	stw r0, 0x3ec(r26)
/* 8009143C  38 00 00 01 */	li r0, 1
/* 80091440  98 1A 01 58 */	stb r0, 0x158(r26)
/* 80091444  38 60 00 01 */	li r3, 1
/* 80091448  E3 E1 05 48 */	psq_l f31, 1352(r1), 0, 0 /* qr0 */
/* 8009144C  CB E1 05 40 */	lfd f31, 0x540(r1)
/* 80091450  39 61 05 40 */	addi r11, r1, 0x540
/* 80091454  48 2D 0D C9 */	bl _restgpr_26
/* 80091458  80 01 05 54 */	lwz r0, 0x554(r1)
/* 8009145C  7C 08 03 A6 */	mtlr r0
/* 80091460  38 21 05 50 */	addi r1, r1, 0x550
/* 80091464  4E 80 00 20 */	blr 
