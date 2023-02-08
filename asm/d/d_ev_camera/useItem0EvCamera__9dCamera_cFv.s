lbl_800929AC:
/* 800929AC  94 21 F9 00 */	stwu r1, -0x700(r1)
/* 800929B0  7C 08 02 A6 */	mflr r0
/* 800929B4  90 01 07 04 */	stw r0, 0x704(r1)
/* 800929B8  DB E1 06 F0 */	stfd f31, 0x6f0(r1)
/* 800929BC  F3 E1 06 F8 */	psq_st f31, 1784(r1), 0, 0 /* qr0 */
/* 800929C0  DB C1 06 E0 */	stfd f30, 0x6e0(r1)
/* 800929C4  F3 C1 06 E8 */	psq_st f30, 1768(r1), 0, 0 /* qr0 */
/* 800929C8  39 61 06 E0 */	addi r11, r1, 0x6e0
/* 800929CC  48 2C F8 05 */	bl _savegpr_26
/* 800929D0  7C 7C 1B 78 */	mr r28, r3
/* 800929D4  C0 02 8F 1C */	lfs f0, lit_7339(r2)
/* 800929D8  D0 01 03 6C */	stfs f0, 0x36c(r1)
/* 800929DC  C0 02 90 20 */	lfs f0, lit_8728(r2)
/* 800929E0  D0 01 03 70 */	stfs f0, 0x370(r1)
/* 800929E4  C0 02 8F B4 */	lfs f0, lit_8206(r2)
/* 800929E8  D0 01 03 74 */	stfs f0, 0x374(r1)
/* 800929EC  C0 02 8F 3C */	lfs f0, lit_7347(r2)
/* 800929F0  D0 01 02 B8 */	stfs f0, 0x2b8(r1)
/* 800929F4  C0 02 8F BC */	lfs f0, lit_8208(r2)
/* 800929F8  D0 01 02 BC */	stfs f0, 0x2bc(r1)
/* 800929FC  C0 02 8F 34 */	lfs f0, lit_7345(r2)
/* 80092A00  D0 01 02 C0 */	stfs f0, 0x2c0(r1)
/* 80092A04  38 61 04 C8 */	addi r3, r1, 0x4c8
/* 80092A08  38 81 02 B8 */	addi r4, r1, 0x2b8
/* 80092A0C  48 00 4D E9 */	bl __ct__4cXyzFRC4cXyz
/* 80092A10  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80092A14  D0 01 02 AC */	stfs f0, 0x2ac(r1)
/* 80092A18  C0 02 8F 28 */	lfs f0, lit_7342(r2)
/* 80092A1C  D0 01 02 B0 */	stfs f0, 0x2b0(r1)
/* 80092A20  C0 02 90 88 */	lfs f0, lit_9395(r2)
/* 80092A24  D0 01 02 B4 */	stfs f0, 0x2b4(r1)
/* 80092A28  38 61 04 D4 */	addi r3, r1, 0x4d4
/* 80092A2C  38 81 02 AC */	addi r4, r1, 0x2ac
/* 80092A30  48 00 4D C5 */	bl __ct__4cXyzFRC4cXyz
/* 80092A34  C0 02 8F D8 */	lfs f0, lit_8215(r2)
/* 80092A38  D0 01 02 A0 */	stfs f0, 0x2a0(r1)
/* 80092A3C  C0 02 8F 28 */	lfs f0, lit_7342(r2)
/* 80092A40  D0 01 02 A4 */	stfs f0, 0x2a4(r1)
/* 80092A44  C0 02 8F 74 */	lfs f0, lit_8190(r2)
/* 80092A48  D0 01 02 A8 */	stfs f0, 0x2a8(r1)
/* 80092A4C  38 61 04 E0 */	addi r3, r1, 0x4e0
/* 80092A50  38 81 02 A0 */	addi r4, r1, 0x2a0
/* 80092A54  48 00 4D A1 */	bl __ct__4cXyzFRC4cXyz
/* 80092A58  C0 02 8F 68 */	lfs f0, lit_8187(r2)
/* 80092A5C  D0 01 02 94 */	stfs f0, 0x294(r1)
/* 80092A60  C0 02 90 8C */	lfs f0, lit_9396(r2)
/* 80092A64  D0 01 02 98 */	stfs f0, 0x298(r1)
/* 80092A68  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80092A6C  D0 01 02 9C */	stfs f0, 0x29c(r1)
/* 80092A70  38 61 04 EC */	addi r3, r1, 0x4ec
/* 80092A74  38 81 02 94 */	addi r4, r1, 0x294
/* 80092A78  48 00 4D 7D */	bl __ct__4cXyzFRC4cXyz
/* 80092A7C  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80092A80  D0 01 03 60 */	stfs f0, 0x360(r1)
/* 80092A84  C0 02 90 90 */	lfs f0, lit_9397(r2)
/* 80092A88  D0 01 03 64 */	stfs f0, 0x364(r1)
/* 80092A8C  C0 02 8F 40 */	lfs f0, lit_7357(r2)
/* 80092A90  D0 01 03 68 */	stfs f0, 0x368(r1)
/* 80092A94  C0 02 90 10 */	lfs f0, lit_8724(r2)
/* 80092A98  D0 01 02 88 */	stfs f0, 0x288(r1)
/* 80092A9C  C0 02 8F 4C */	lfs f0, lit_8180(r2)
/* 80092AA0  D0 01 02 8C */	stfs f0, 0x28c(r1)
/* 80092AA4  C0 02 8F C8 */	lfs f0, lit_8211(r2)
/* 80092AA8  D0 01 02 90 */	stfs f0, 0x290(r1)
/* 80092AAC  38 61 04 F8 */	addi r3, r1, 0x4f8
/* 80092AB0  38 81 02 88 */	addi r4, r1, 0x288
/* 80092AB4  48 00 4D 41 */	bl __ct__4cXyzFRC4cXyz
/* 80092AB8  C0 02 90 94 */	lfs f0, lit_9398(r2)
/* 80092ABC  D0 01 02 7C */	stfs f0, 0x27c(r1)
/* 80092AC0  C0 02 90 98 */	lfs f0, lit_9399(r2)
/* 80092AC4  D0 01 02 80 */	stfs f0, 0x280(r1)
/* 80092AC8  C0 02 90 10 */	lfs f0, lit_8724(r2)
/* 80092ACC  D0 01 02 84 */	stfs f0, 0x284(r1)
/* 80092AD0  38 61 05 04 */	addi r3, r1, 0x504
/* 80092AD4  38 81 02 7C */	addi r4, r1, 0x27c
/* 80092AD8  48 00 4D 1D */	bl __ct__4cXyzFRC4cXyz
/* 80092ADC  C0 02 90 10 */	lfs f0, lit_8724(r2)
/* 80092AE0  D0 01 02 70 */	stfs f0, 0x270(r1)
/* 80092AE4  C0 02 90 9C */	lfs f0, lit_9400(r2)
/* 80092AE8  D0 01 02 74 */	stfs f0, 0x274(r1)
/* 80092AEC  C0 02 90 A0 */	lfs f0, lit_9401(r2)
/* 80092AF0  D0 01 02 78 */	stfs f0, 0x278(r1)
/* 80092AF4  38 61 05 10 */	addi r3, r1, 0x510
/* 80092AF8  38 81 02 70 */	addi r4, r1, 0x270
/* 80092AFC  48 00 4C F9 */	bl __ct__4cXyzFRC4cXyz
/* 80092B00  C0 02 8F F8 */	lfs f0, lit_8223(r2)
/* 80092B04  D0 01 02 64 */	stfs f0, 0x264(r1)
/* 80092B08  C0 02 90 A4 */	lfs f0, lit_9402(r2)
/* 80092B0C  D0 01 02 68 */	stfs f0, 0x268(r1)
/* 80092B10  C0 02 8F 94 */	lfs f0, lit_8198(r2)
/* 80092B14  D0 01 02 6C */	stfs f0, 0x26c(r1)
/* 80092B18  38 61 05 1C */	addi r3, r1, 0x51c
/* 80092B1C  38 81 02 64 */	addi r4, r1, 0x264
/* 80092B20  48 00 4C D5 */	bl __ct__4cXyzFRC4cXyz
/* 80092B24  C0 02 8F 88 */	lfs f0, lit_8195(r2)
/* 80092B28  D0 01 02 58 */	stfs f0, 0x258(r1)
/* 80092B2C  C0 02 90 A8 */	lfs f0, lit_9403(r2)
/* 80092B30  D0 01 02 5C */	stfs f0, 0x25c(r1)
/* 80092B34  C0 02 8F 34 */	lfs f0, lit_7345(r2)
/* 80092B38  D0 01 02 60 */	stfs f0, 0x260(r1)
/* 80092B3C  38 61 05 28 */	addi r3, r1, 0x528
/* 80092B40  38 81 02 58 */	addi r4, r1, 0x258
/* 80092B44  48 00 4C B1 */	bl __ct__4cXyzFRC4cXyz
/* 80092B48  C0 02 90 AC */	lfs f0, lit_9404(r2)
/* 80092B4C  D0 01 02 4C */	stfs f0, 0x24c(r1)
/* 80092B50  C0 02 90 B0 */	lfs f0, lit_9405(r2)
/* 80092B54  D0 01 02 50 */	stfs f0, 0x250(r1)
/* 80092B58  C0 02 8F 2C */	lfs f0, lit_7343(r2)
/* 80092B5C  D0 01 02 54 */	stfs f0, 0x254(r1)
/* 80092B60  38 61 05 34 */	addi r3, r1, 0x534
/* 80092B64  38 81 02 4C */	addi r4, r1, 0x24c
/* 80092B68  48 00 4C 8D */	bl __ct__4cXyzFRC4cXyz
/* 80092B6C  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80092B70  D0 01 03 54 */	stfs f0, 0x354(r1)
/* 80092B74  C0 02 8F 9C */	lfs f0, lit_8200(r2)
/* 80092B78  D0 01 03 58 */	stfs f0, 0x358(r1)
/* 80092B7C  C0 02 8F A0 */	lfs f0, lit_8201(r2)
/* 80092B80  D0 01 03 5C */	stfs f0, 0x35c(r1)
/* 80092B84  C0 02 90 B4 */	lfs f0, lit_9406(r2)
/* 80092B88  D0 01 02 40 */	stfs f0, 0x240(r1)
/* 80092B8C  C0 02 90 20 */	lfs f0, lit_8728(r2)
/* 80092B90  D0 01 02 44 */	stfs f0, 0x244(r1)
/* 80092B94  C0 02 90 24 */	lfs f0, lit_8729(r2)
/* 80092B98  D0 01 02 48 */	stfs f0, 0x248(r1)
/* 80092B9C  38 61 04 98 */	addi r3, r1, 0x498
/* 80092BA0  38 81 02 40 */	addi r4, r1, 0x240
/* 80092BA4  48 00 4C 51 */	bl __ct__4cXyzFRC4cXyz
/* 80092BA8  C0 02 90 B8 */	lfs f0, lit_9407(r2)
/* 80092BAC  D0 01 02 34 */	stfs f0, 0x234(r1)
/* 80092BB0  C0 02 90 BC */	lfs f0, lit_9408(r2)
/* 80092BB4  D0 01 02 38 */	stfs f0, 0x238(r1)
/* 80092BB8  C0 02 8F 50 */	lfs f0, lit_8181(r2)
/* 80092BBC  D0 01 02 3C */	stfs f0, 0x23c(r1)
/* 80092BC0  38 61 04 A4 */	addi r3, r1, 0x4a4
/* 80092BC4  38 81 02 34 */	addi r4, r1, 0x234
/* 80092BC8  48 00 4C 2D */	bl __ct__4cXyzFRC4cXyz
/* 80092BCC  C0 02 90 C0 */	lfs f0, lit_9409(r2)
/* 80092BD0  D0 01 02 28 */	stfs f0, 0x228(r1)
/* 80092BD4  C0 02 90 10 */	lfs f0, lit_8724(r2)
/* 80092BD8  D0 01 02 2C */	stfs f0, 0x22c(r1)
/* 80092BDC  C0 02 8F 28 */	lfs f0, lit_7342(r2)
/* 80092BE0  D0 01 02 30 */	stfs f0, 0x230(r1)
/* 80092BE4  38 61 04 B0 */	addi r3, r1, 0x4b0
/* 80092BE8  38 81 02 28 */	addi r4, r1, 0x228
/* 80092BEC  48 00 4C 09 */	bl __ct__4cXyzFRC4cXyz
/* 80092BF0  C0 02 8F 20 */	lfs f0, lit_7340(r2)
/* 80092BF4  D0 01 02 1C */	stfs f0, 0x21c(r1)
/* 80092BF8  C0 02 90 78 */	lfs f0, lit_8750(r2)
/* 80092BFC  D0 01 02 20 */	stfs f0, 0x220(r1)
/* 80092C00  C0 02 90 C0 */	lfs f0, lit_9409(r2)
/* 80092C04  D0 01 02 24 */	stfs f0, 0x224(r1)
/* 80092C08  38 61 04 BC */	addi r3, r1, 0x4bc
/* 80092C0C  38 81 02 1C */	addi r4, r1, 0x21c
/* 80092C10  48 00 4B E5 */	bl __ct__4cXyzFRC4cXyz
/* 80092C14  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80092C18  D0 01 03 48 */	stfs f0, 0x348(r1)
/* 80092C1C  C0 02 90 C4 */	lfs f0, lit_9410(r2)
/* 80092C20  D0 01 03 4C */	stfs f0, 0x34c(r1)
/* 80092C24  C0 02 8F A0 */	lfs f0, lit_8201(r2)
/* 80092C28  D0 01 03 50 */	stfs f0, 0x350(r1)
/* 80092C2C  C0 02 90 C8 */	lfs f0, lit_9411(r2)
/* 80092C30  D0 01 02 10 */	stfs f0, 0x210(r1)
/* 80092C34  C0 02 8F 6C */	lfs f0, lit_8188(r2)
/* 80092C38  D0 01 02 14 */	stfs f0, 0x214(r1)
/* 80092C3C  C0 02 8F D4 */	lfs f0, lit_8214(r2)
/* 80092C40  D0 01 02 18 */	stfs f0, 0x218(r1)
/* 80092C44  38 61 04 68 */	addi r3, r1, 0x468
/* 80092C48  38 81 02 10 */	addi r4, r1, 0x210
/* 80092C4C  48 00 4B A9 */	bl __ct__4cXyzFRC4cXyz
/* 80092C50  C0 02 8F 7C */	lfs f0, lit_8192(r2)
/* 80092C54  D0 01 02 04 */	stfs f0, 0x204(r1)
/* 80092C58  C0 02 90 CC */	lfs f0, lit_9412(r2)
/* 80092C5C  D0 01 02 08 */	stfs f0, 0x208(r1)
/* 80092C60  C0 02 90 D0 */	lfs f0, lit_9413(r2)
/* 80092C64  D0 01 02 0C */	stfs f0, 0x20c(r1)
/* 80092C68  38 61 04 74 */	addi r3, r1, 0x474
/* 80092C6C  38 81 02 04 */	addi r4, r1, 0x204
/* 80092C70  48 00 4B 85 */	bl __ct__4cXyzFRC4cXyz
/* 80092C74  C0 02 8F 20 */	lfs f0, lit_7340(r2)
/* 80092C78  D0 01 01 F8 */	stfs f0, 0x1f8(r1)
/* 80092C7C  C0 02 8F 7C */	lfs f0, lit_8192(r2)
/* 80092C80  D0 01 01 FC */	stfs f0, 0x1fc(r1)
/* 80092C84  C0 02 8F 70 */	lfs f0, lit_8189(r2)
/* 80092C88  D0 01 02 00 */	stfs f0, 0x200(r1)
/* 80092C8C  38 61 04 80 */	addi r3, r1, 0x480
/* 80092C90  38 81 01 F8 */	addi r4, r1, 0x1f8
/* 80092C94  48 00 4B 61 */	bl __ct__4cXyzFRC4cXyz
/* 80092C98  C0 02 8F 44 */	lfs f0, lit_8178(r2)
/* 80092C9C  D0 01 01 EC */	stfs f0, 0x1ec(r1)
/* 80092CA0  C0 02 8F 4C */	lfs f0, lit_8180(r2)
/* 80092CA4  D0 01 01 F0 */	stfs f0, 0x1f0(r1)
/* 80092CA8  C0 02 90 D4 */	lfs f0, lit_9414(r2)
/* 80092CAC  D0 01 01 F4 */	stfs f0, 0x1f4(r1)
/* 80092CB0  38 61 04 8C */	addi r3, r1, 0x48c
/* 80092CB4  38 81 01 EC */	addi r4, r1, 0x1ec
/* 80092CB8  48 00 4B 3D */	bl __ct__4cXyzFRC4cXyz
/* 80092CBC  C0 02 90 D8 */	lfs f0, lit_9415(r2)
/* 80092CC0  D0 01 03 3C */	stfs f0, 0x33c(r1)
/* 80092CC4  C0 02 90 DC */	lfs f0, lit_9416(r2)
/* 80092CC8  D0 01 03 40 */	stfs f0, 0x340(r1)
/* 80092CCC  C0 02 90 E0 */	lfs f0, lit_9417(r2)
/* 80092CD0  D0 01 03 44 */	stfs f0, 0x344(r1)
/* 80092CD4  C0 02 90 E4 */	lfs f0, lit_9418(r2)
/* 80092CD8  D0 01 01 E0 */	stfs f0, 0x1e0(r1)
/* 80092CDC  C0 02 90 E8 */	lfs f0, lit_9419(r2)
/* 80092CE0  D0 01 01 E4 */	stfs f0, 0x1e4(r1)
/* 80092CE4  C0 02 90 EC */	lfs f0, lit_9420(r2)
/* 80092CE8  D0 01 01 E8 */	stfs f0, 0x1e8(r1)
/* 80092CEC  38 61 04 44 */	addi r3, r1, 0x444
/* 80092CF0  38 81 01 E0 */	addi r4, r1, 0x1e0
/* 80092CF4  48 00 4B 01 */	bl __ct__4cXyzFRC4cXyz
/* 80092CF8  C0 02 90 F0 */	lfs f0, lit_9421(r2)
/* 80092CFC  D0 01 01 D4 */	stfs f0, 0x1d4(r1)
/* 80092D00  C0 02 90 F4 */	lfs f0, lit_9422(r2)
/* 80092D04  D0 01 01 D8 */	stfs f0, 0x1d8(r1)
/* 80092D08  C0 02 90 F8 */	lfs f0, lit_9423(r2)
/* 80092D0C  D0 01 01 DC */	stfs f0, 0x1dc(r1)
/* 80092D10  38 61 04 50 */	addi r3, r1, 0x450
/* 80092D14  38 81 01 D4 */	addi r4, r1, 0x1d4
/* 80092D18  48 00 4A DD */	bl __ct__4cXyzFRC4cXyz
/* 80092D1C  C0 02 90 E4 */	lfs f0, lit_9418(r2)
/* 80092D20  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 80092D24  C0 02 90 E8 */	lfs f0, lit_9419(r2)
/* 80092D28  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 80092D2C  C0 02 90 EC */	lfs f0, lit_9420(r2)
/* 80092D30  D0 01 01 D0 */	stfs f0, 0x1d0(r1)
/* 80092D34  38 61 04 5C */	addi r3, r1, 0x45c
/* 80092D38  38 81 01 C8 */	addi r4, r1, 0x1c8
/* 80092D3C  48 00 4A B9 */	bl __ct__4cXyzFRC4cXyz
/* 80092D40  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80092D44  D0 01 03 30 */	stfs f0, 0x330(r1)
/* 80092D48  C0 02 8F 98 */	lfs f0, lit_8199(r2)
/* 80092D4C  D0 01 03 34 */	stfs f0, 0x334(r1)
/* 80092D50  C0 02 90 20 */	lfs f0, lit_8728(r2)
/* 80092D54  D0 01 03 38 */	stfs f0, 0x338(r1)
/* 80092D58  C0 02 90 C8 */	lfs f0, lit_9411(r2)
/* 80092D5C  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 80092D60  C0 02 8F BC */	lfs f0, lit_8208(r2)
/* 80092D64  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 80092D68  C0 02 8F 28 */	lfs f0, lit_7342(r2)
/* 80092D6C  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 80092D70  38 61 04 20 */	addi r3, r1, 0x420
/* 80092D74  38 81 01 BC */	addi r4, r1, 0x1bc
/* 80092D78  48 00 4A 7D */	bl __ct__4cXyzFRC4cXyz
/* 80092D7C  C0 02 8F F0 */	lfs f0, lit_8221(r2)
/* 80092D80  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 80092D84  C0 02 8F 88 */	lfs f0, lit_8195(r2)
/* 80092D88  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 80092D8C  C0 02 8F D8 */	lfs f0, lit_8215(r2)
/* 80092D90  D0 01 01 B8 */	stfs f0, 0x1b8(r1)
/* 80092D94  38 61 04 2C */	addi r3, r1, 0x42c
/* 80092D98  38 81 01 B0 */	addi r4, r1, 0x1b0
/* 80092D9C  48 00 4A 59 */	bl __ct__4cXyzFRC4cXyz
/* 80092DA0  C0 02 90 10 */	lfs f0, lit_8724(r2)
/* 80092DA4  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 80092DA8  C0 02 8F 70 */	lfs f0, lit_8189(r2)
/* 80092DAC  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 80092DB0  C0 02 90 FC */	lfs f0, lit_9424(r2)
/* 80092DB4  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 80092DB8  38 61 04 38 */	addi r3, r1, 0x438
/* 80092DBC  38 81 01 A4 */	addi r4, r1, 0x1a4
/* 80092DC0  48 00 4A 35 */	bl __ct__4cXyzFRC4cXyz
/* 80092DC4  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80092DC8  D0 01 03 24 */	stfs f0, 0x324(r1)
/* 80092DCC  C0 02 90 20 */	lfs f0, lit_8728(r2)
/* 80092DD0  D0 01 03 28 */	stfs f0, 0x328(r1)
/* 80092DD4  C0 02 8F CC */	lfs f0, lit_8212(r2)
/* 80092DD8  D0 01 03 2C */	stfs f0, 0x32c(r1)
/* 80092DDC  D0 01 01 98 */	stfs f0, 0x198(r1)
/* 80092DE0  C0 02 8F 98 */	lfs f0, lit_8199(r2)
/* 80092DE4  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 80092DE8  C0 02 91 00 */	lfs f0, lit_9425(r2)
/* 80092DEC  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 80092DF0  38 61 03 90 */	addi r3, r1, 0x390
/* 80092DF4  38 81 01 98 */	addi r4, r1, 0x198
/* 80092DF8  48 00 49 FD */	bl __ct__4cXyzFRC4cXyz
/* 80092DFC  C0 02 8F 70 */	lfs f0, lit_8189(r2)
/* 80092E00  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 80092E04  C0 02 90 A8 */	lfs f0, lit_9403(r2)
/* 80092E08  D0 01 01 90 */	stfs f0, 0x190(r1)
/* 80092E0C  C0 02 91 04 */	lfs f0, lit_9426(r2)
/* 80092E10  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 80092E14  38 61 03 9C */	addi r3, r1, 0x39c
/* 80092E18  38 81 01 8C */	addi r4, r1, 0x18c
/* 80092E1C  48 00 49 D9 */	bl __ct__4cXyzFRC4cXyz
/* 80092E20  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80092E24  D0 01 03 18 */	stfs f0, 0x318(r1)
/* 80092E28  C0 02 8F 1C */	lfs f0, lit_7339(r2)
/* 80092E2C  D0 01 03 1C */	stfs f0, 0x31c(r1)
/* 80092E30  C0 02 90 80 */	lfs f0, lit_8752(r2)
/* 80092E34  D0 01 03 20 */	stfs f0, 0x320(r1)
/* 80092E38  C0 02 91 08 */	lfs f0, lit_9427(r2)
/* 80092E3C  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 80092E40  C0 02 90 A8 */	lfs f0, lit_9403(r2)
/* 80092E44  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 80092E48  C0 02 91 0C */	lfs f0, lit_9428(r2)
/* 80092E4C  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 80092E50  38 61 03 78 */	addi r3, r1, 0x378
/* 80092E54  38 81 01 80 */	addi r4, r1, 0x180
/* 80092E58  48 00 49 9D */	bl __ct__4cXyzFRC4cXyz
/* 80092E5C  C0 02 91 10 */	lfs f0, lit_9429(r2)
/* 80092E60  D0 01 01 74 */	stfs f0, 0x174(r1)
/* 80092E64  C0 02 8F 8C */	lfs f0, lit_8196(r2)
/* 80092E68  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 80092E6C  C0 02 91 14 */	lfs f0, lit_9430(r2)
/* 80092E70  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 80092E74  38 61 03 84 */	addi r3, r1, 0x384
/* 80092E78  38 81 01 74 */	addi r4, r1, 0x174
/* 80092E7C  48 00 49 79 */	bl __ct__4cXyzFRC4cXyz
/* 80092E80  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80092E84  D0 01 03 0C */	stfs f0, 0x30c(r1)
/* 80092E88  C0 02 90 20 */	lfs f0, lit_8728(r2)
/* 80092E8C  D0 01 03 10 */	stfs f0, 0x310(r1)
/* 80092E90  C0 02 8F B4 */	lfs f0, lit_8206(r2)
/* 80092E94  D0 01 03 14 */	stfs f0, 0x314(r1)
/* 80092E98  C0 02 91 18 */	lfs f0, lit_9431(r2)
/* 80092E9C  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 80092EA0  C0 02 91 1C */	lfs f0, lit_9432(r2)
/* 80092EA4  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 80092EA8  C0 02 91 20 */	lfs f0, lit_9433(r2)
/* 80092EAC  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 80092EB0  38 61 03 F0 */	addi r3, r1, 0x3f0
/* 80092EB4  38 81 01 68 */	addi r4, r1, 0x168
/* 80092EB8  48 00 49 3D */	bl __ct__4cXyzFRC4cXyz
/* 80092EBC  C0 02 91 24 */	lfs f0, lit_9434(r2)
/* 80092EC0  D0 01 01 5C */	stfs f0, 0x15c(r1)
/* 80092EC4  C0 02 90 60 */	lfs f0, lit_8744(r2)
/* 80092EC8  D0 01 01 60 */	stfs f0, 0x160(r1)
/* 80092ECC  C0 02 90 58 */	lfs f0, lit_8742(r2)
/* 80092ED0  D0 01 01 64 */	stfs f0, 0x164(r1)
/* 80092ED4  38 61 03 FC */	addi r3, r1, 0x3fc
/* 80092ED8  38 81 01 5C */	addi r4, r1, 0x15c
/* 80092EDC  48 00 49 19 */	bl __ct__4cXyzFRC4cXyz
/* 80092EE0  C0 02 91 28 */	lfs f0, lit_9435(r2)
/* 80092EE4  D0 01 01 50 */	stfs f0, 0x150(r1)
/* 80092EE8  C0 02 8F E4 */	lfs f0, lit_8218(r2)
/* 80092EEC  D0 01 01 54 */	stfs f0, 0x154(r1)
/* 80092EF0  C0 02 91 2C */	lfs f0, lit_9436(r2)
/* 80092EF4  D0 01 01 58 */	stfs f0, 0x158(r1)
/* 80092EF8  38 61 04 08 */	addi r3, r1, 0x408
/* 80092EFC  38 81 01 50 */	addi r4, r1, 0x150
/* 80092F00  48 00 48 F5 */	bl __ct__4cXyzFRC4cXyz
/* 80092F04  C0 02 90 CC */	lfs f0, lit_9412(r2)
/* 80092F08  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 80092F0C  C0 02 8F 34 */	lfs f0, lit_7345(r2)
/* 80092F10  D0 01 01 48 */	stfs f0, 0x148(r1)
/* 80092F14  C0 02 91 30 */	lfs f0, lit_9437(r2)
/* 80092F18  D0 01 01 4C */	stfs f0, 0x14c(r1)
/* 80092F1C  38 61 04 14 */	addi r3, r1, 0x414
/* 80092F20  38 81 01 44 */	addi r4, r1, 0x144
/* 80092F24  48 00 48 D1 */	bl __ct__4cXyzFRC4cXyz
/* 80092F28  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80092F2C  D0 01 03 00 */	stfs f0, 0x300(r1)
/* 80092F30  C0 02 8F 40 */	lfs f0, lit_7357(r2)
/* 80092F34  D0 01 03 04 */	stfs f0, 0x304(r1)
/* 80092F38  C0 02 8F C0 */	lfs f0, lit_8209(r2)
/* 80092F3C  D0 01 03 08 */	stfs f0, 0x308(r1)
/* 80092F40  C0 02 8F D8 */	lfs f0, lit_8215(r2)
/* 80092F44  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 80092F48  C0 02 90 00 */	lfs f0, lit_8225(r2)
/* 80092F4C  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 80092F50  C0 02 90 B4 */	lfs f0, lit_9406(r2)
/* 80092F54  D0 01 01 40 */	stfs f0, 0x140(r1)
/* 80092F58  38 61 03 CC */	addi r3, r1, 0x3cc
/* 80092F5C  38 81 01 38 */	addi r4, r1, 0x138
/* 80092F60  48 00 48 95 */	bl __ct__4cXyzFRC4cXyz
/* 80092F64  C0 02 90 D4 */	lfs f0, lit_9414(r2)
/* 80092F68  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 80092F6C  C0 02 91 34 */	lfs f0, lit_9438(r2)
/* 80092F70  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 80092F74  C0 02 91 38 */	lfs f0, lit_9439(r2)
/* 80092F78  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 80092F7C  38 61 03 D8 */	addi r3, r1, 0x3d8
/* 80092F80  38 81 01 2C */	addi r4, r1, 0x12c
/* 80092F84  48 00 48 71 */	bl __ct__4cXyzFRC4cXyz
/* 80092F88  C0 02 8F 94 */	lfs f0, lit_8198(r2)
/* 80092F8C  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 80092F90  C0 02 8F 3C */	lfs f0, lit_7347(r2)
/* 80092F94  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 80092F98  C0 02 91 3C */	lfs f0, lit_9440(r2)
/* 80092F9C  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 80092FA0  38 61 03 E4 */	addi r3, r1, 0x3e4
/* 80092FA4  38 81 01 20 */	addi r4, r1, 0x120
/* 80092FA8  48 00 48 4D */	bl __ct__4cXyzFRC4cXyz
/* 80092FAC  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80092FB0  D0 01 02 F4 */	stfs f0, 0x2f4(r1)
/* 80092FB4  C0 02 8F 60 */	lfs f0, lit_8185(r2)
/* 80092FB8  D0 01 02 F8 */	stfs f0, 0x2f8(r1)
/* 80092FBC  C0 02 8F 3C */	lfs f0, lit_7347(r2)
/* 80092FC0  D0 01 02 FC */	stfs f0, 0x2fc(r1)
/* 80092FC4  C0 02 90 B4 */	lfs f0, lit_9406(r2)
/* 80092FC8  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80092FCC  C0 02 8F 74 */	lfs f0, lit_8190(r2)
/* 80092FD0  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80092FD4  C0 02 91 40 */	lfs f0, lit_9441(r2)
/* 80092FD8  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 80092FDC  38 61 03 A8 */	addi r3, r1, 0x3a8
/* 80092FE0  38 81 01 14 */	addi r4, r1, 0x114
/* 80092FE4  48 00 48 11 */	bl __ct__4cXyzFRC4cXyz
/* 80092FE8  C0 02 8F E4 */	lfs f0, lit_8218(r2)
/* 80092FEC  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80092FF0  C0 02 8F 50 */	lfs f0, lit_8181(r2)
/* 80092FF4  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80092FF8  C0 02 8F 84 */	lfs f0, lit_8194(r2)
/* 80092FFC  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80093000  38 61 03 B4 */	addi r3, r1, 0x3b4
/* 80093004  38 81 01 08 */	addi r4, r1, 0x108
/* 80093008  48 00 47 ED */	bl __ct__4cXyzFRC4cXyz
/* 8009300C  C0 02 90 3C */	lfs f0, lit_8735(r2)
/* 80093010  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80093014  C0 02 8F 4C */	lfs f0, lit_8180(r2)
/* 80093018  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 8009301C  C0 02 8F 3C */	lfs f0, lit_7347(r2)
/* 80093020  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80093024  38 61 03 C0 */	addi r3, r1, 0x3c0
/* 80093028  38 81 00 FC */	addi r4, r1, 0xfc
/* 8009302C  48 00 47 C9 */	bl __ct__4cXyzFRC4cXyz
/* 80093030  38 A1 05 3C */	addi r5, r1, 0x53c
/* 80093034  3C 60 80 38 */	lis r3, lit_8969@ha /* 0x8037A89C@ha */
/* 80093038  38 63 A8 9C */	addi r3, r3, lit_8969@l /* 0x8037A89C@l */
/* 8009303C  38 83 FF FC */	addi r4, r3, -4
/* 80093040  38 00 00 2D */	li r0, 0x2d
/* 80093044  7C 09 03 A6 */	mtctr r0
lbl_80093048:
/* 80093048  80 64 00 04 */	lwz r3, 4(r4)
/* 8009304C  84 04 00 08 */	lwzu r0, 8(r4)
/* 80093050  90 65 00 04 */	stw r3, 4(r5)
/* 80093054  94 05 00 08 */	stwu r0, 8(r5)
/* 80093058  42 00 FF F0 */	bdnz lbl_80093048
/* 8009305C  80 04 00 04 */	lwz r0, 4(r4)
/* 80093060  90 05 00 04 */	stw r0, 4(r5)
/* 80093064  38 81 03 54 */	addi r4, r1, 0x354
/* 80093068  90 81 05 40 */	stw r4, 0x540(r1)
/* 8009306C  38 61 04 98 */	addi r3, r1, 0x498
/* 80093070  90 61 05 44 */	stw r3, 0x544(r1)
/* 80093074  38 E0 00 04 */	li r7, 4
/* 80093078  90 E1 05 48 */	stw r7, 0x548(r1)
/* 8009307C  38 01 03 60 */	addi r0, r1, 0x360
/* 80093080  90 01 05 5C */	stw r0, 0x55c(r1)
/* 80093084  38 01 04 F8 */	addi r0, r1, 0x4f8
/* 80093088  90 01 05 60 */	stw r0, 0x560(r1)
/* 8009308C  38 00 00 06 */	li r0, 6
/* 80093090  90 01 05 64 */	stw r0, 0x564(r1)
/* 80093094  90 81 05 78 */	stw r4, 0x578(r1)
/* 80093098  90 61 05 7C */	stw r3, 0x57c(r1)
/* 8009309C  90 E1 05 80 */	stw r7, 0x580(r1)
/* 800930A0  38 01 03 48 */	addi r0, r1, 0x348
/* 800930A4  90 01 05 94 */	stw r0, 0x594(r1)
/* 800930A8  38 01 04 68 */	addi r0, r1, 0x468
/* 800930AC  90 01 05 98 */	stw r0, 0x598(r1)
/* 800930B0  90 E1 05 9C */	stw r7, 0x59c(r1)
/* 800930B4  38 C1 03 6C */	addi r6, r1, 0x36c
/* 800930B8  90 C1 05 B0 */	stw r6, 0x5b0(r1)
/* 800930BC  38 A1 04 C8 */	addi r5, r1, 0x4c8
/* 800930C0  90 A1 05 B4 */	stw r5, 0x5b4(r1)
/* 800930C4  90 E1 05 B8 */	stw r7, 0x5b8(r1)
/* 800930C8  38 01 03 3C */	addi r0, r1, 0x33c
/* 800930CC  90 01 05 CC */	stw r0, 0x5cc(r1)
/* 800930D0  38 01 04 44 */	addi r0, r1, 0x444
/* 800930D4  90 01 05 D0 */	stw r0, 0x5d0(r1)
/* 800930D8  38 80 00 03 */	li r4, 3
/* 800930DC  90 81 05 D4 */	stw r4, 0x5d4(r1)
/* 800930E0  38 61 03 30 */	addi r3, r1, 0x330
/* 800930E4  90 61 05 E8 */	stw r3, 0x5e8(r1)
/* 800930E8  38 01 04 20 */	addi r0, r1, 0x420
/* 800930EC  90 01 05 EC */	stw r0, 0x5ec(r1)
/* 800930F0  90 81 05 F0 */	stw r4, 0x5f0(r1)
/* 800930F4  90 61 06 04 */	stw r3, 0x604(r1)
/* 800930F8  90 01 06 08 */	stw r0, 0x608(r1)
/* 800930FC  90 81 06 0C */	stw r4, 0x60c(r1)
/* 80093100  38 01 03 24 */	addi r0, r1, 0x324
/* 80093104  90 01 06 20 */	stw r0, 0x620(r1)
/* 80093108  38 01 03 90 */	addi r0, r1, 0x390
/* 8009310C  90 01 06 24 */	stw r0, 0x624(r1)
/* 80093110  38 60 00 02 */	li r3, 2
/* 80093114  90 61 06 28 */	stw r3, 0x628(r1)
/* 80093118  38 01 03 18 */	addi r0, r1, 0x318
/* 8009311C  90 01 06 3C */	stw r0, 0x63c(r1)
/* 80093120  38 01 03 78 */	addi r0, r1, 0x378
/* 80093124  90 01 06 40 */	stw r0, 0x640(r1)
/* 80093128  90 61 06 44 */	stw r3, 0x644(r1)
/* 8009312C  38 01 03 0C */	addi r0, r1, 0x30c
/* 80093130  90 01 06 58 */	stw r0, 0x658(r1)
/* 80093134  38 01 03 F0 */	addi r0, r1, 0x3f0
/* 80093138  90 01 06 5C */	stw r0, 0x65c(r1)
/* 8009313C  90 E1 06 60 */	stw r7, 0x660(r1)
/* 80093140  38 01 02 F4 */	addi r0, r1, 0x2f4
/* 80093144  90 01 06 74 */	stw r0, 0x674(r1)
/* 80093148  38 01 03 A8 */	addi r0, r1, 0x3a8
/* 8009314C  90 01 06 78 */	stw r0, 0x678(r1)
/* 80093150  90 81 06 7C */	stw r4, 0x67c(r1)
/* 80093154  90 C1 06 90 */	stw r6, 0x690(r1)
/* 80093158  90 A1 06 94 */	stw r5, 0x694(r1)
/* 8009315C  90 E1 06 98 */	stw r7, 0x698(r1)
/* 80093160  3B A0 00 00 */	li r29, 0
/* 80093164  80 1C 01 74 */	lwz r0, 0x174(r28)
/* 80093168  28 00 00 00 */	cmplwi r0, 0
/* 8009316C  40 82 00 2C */	bne lbl_80093198
/* 80093170  38 00 00 00 */	li r0, 0
/* 80093174  90 1C 03 E8 */	stw r0, 0x3e8(r28)
/* 80093178  38 7C 04 2C */	addi r3, r28, 0x42c
/* 8009317C  38 9C 00 30 */	addi r4, r28, 0x30
/* 80093180  48 00 46 59 */	bl __as__4cXyzFRC4cXyz
/* 80093184  38 7C 04 38 */	addi r3, r28, 0x438
/* 80093188  38 9C 00 3C */	addi r4, r28, 0x3c
/* 8009318C  48 00 46 4D */	bl __as__4cXyzFRC4cXyz
/* 80093190  C0 1C 00 58 */	lfs f0, 0x58(r28)
/* 80093194  D0 1C 04 44 */	stfs f0, 0x444(r28)
lbl_80093198:
/* 80093198  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8009319C  7F 84 E3 78 */	mr r4, r28
/* 800931A0  80 BC 01 80 */	lwz r5, 0x180(r28)
/* 800931A4  48 00 45 79 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 800931A8  38 61 02 DC */	addi r3, r1, 0x2dc
/* 800931AC  38 81 00 F0 */	addi r4, r1, 0xf0
/* 800931B0  48 00 46 45 */	bl __ct__4cXyzFRC4cXyz
/* 800931B4  80 1C 03 E8 */	lwz r0, 0x3e8(r28)
/* 800931B8  2C 00 00 0C */	cmpwi r0, 0xc
/* 800931BC  40 80 00 2C */	bge lbl_800931E8
/* 800931C0  2C 00 00 02 */	cmpwi r0, 2
/* 800931C4  41 82 04 CC */	beq lbl_80093690
/* 800931C8  40 80 00 14 */	bge lbl_800931DC
/* 800931CC  2C 00 00 00 */	cmpwi r0, 0
/* 800931D0  41 82 00 2C */	beq lbl_800931FC
/* 800931D4  40 80 03 68 */	bge lbl_8009353C
/* 800931D8  48 00 00 24 */	b lbl_800931FC
lbl_800931DC:
/* 800931DC  2C 00 00 0A */	cmpwi r0, 0xa
/* 800931E0  40 80 00 44 */	bge lbl_80093224
/* 800931E4  48 00 00 18 */	b lbl_800931FC
lbl_800931E8:
/* 800931E8  2C 00 03 E7 */	cmpwi r0, 0x3e7
/* 800931EC  41 82 05 84 */	beq lbl_80093770
/* 800931F0  40 80 00 0C */	bge lbl_800931FC
/* 800931F4  2C 00 00 63 */	cmpwi r0, 0x63
/* 800931F8  41 82 05 3C */	beq lbl_80093734
lbl_800931FC:
/* 800931FC  7F 83 E3 78 */	mr r3, r28
/* 80093200  38 9C 03 F0 */	addi r4, r28, 0x3f0
/* 80093204  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 80093208  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8009320C  38 A5 01 7B */	addi r5, r5, 0x17b
/* 80093210  38 C0 00 00 */	li r6, 0
/* 80093214  4B FF 5E 79 */	bl getEvIntData__9dCamera_cFPiPci
/* 80093218  38 00 00 00 */	li r0, 0
/* 8009321C  90 1C 04 04 */	stw r0, 0x404(r28)
/* 80093220  90 1C 04 08 */	stw r0, 0x408(r28)
lbl_80093224:
/* 80093224  38 00 00 0A */	li r0, 0xa
/* 80093228  90 1C 03 E8 */	stw r0, 0x3e8(r28)
/* 8009322C  80 7C 04 08 */	lwz r3, 0x408(r28)
/* 80093230  38 83 00 01 */	addi r4, r3, 1
/* 80093234  90 9C 04 08 */	stw r4, 0x408(r28)
/* 80093238  80 1C 03 F0 */	lwz r0, 0x3f0(r28)
/* 8009323C  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80093240  38 61 05 54 */	addi r3, r1, 0x554
/* 80093244  7C 03 00 2E */	lwzx r0, r3, r0
/* 80093248  7C 04 00 00 */	cmpw r4, r0
/* 8009324C  41 80 05 28 */	blt lbl_80093774
/* 80093250  38 00 00 00 */	li r0, 0
/* 80093254  90 1C 04 08 */	stw r0, 0x408(r28)
/* 80093258  80 9C 00 A8 */	lwz r4, 0xa8(r28)
/* 8009325C  80 1C 03 F0 */	lwz r0, 0x3f0(r28)
/* 80093260  1C A0 00 1C */	mulli r5, r0, 0x1c
/* 80093264  38 61 05 58 */	addi r3, r1, 0x558
/* 80093268  7C 03 28 2E */	lwzx r0, r3, r5
/* 8009326C  7C 80 00 39 */	and. r0, r4, r0
/* 80093270  40 82 00 40 */	bne lbl_800932B0
/* 80093274  38 61 02 C4 */	addi r3, r1, 0x2c4
/* 80093278  3B 61 05 44 */	addi r27, r1, 0x544
/* 8009327C  7C 9B 28 2E */	lwzx r4, r27, r5
/* 80093280  48 00 45 75 */	bl __ct__4cXyzFRC4cXyz
/* 80093284  80 1C 03 F0 */	lwz r0, 0x3f0(r28)
/* 80093288  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 8009328C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80093290  38 83 00 0C */	addi r4, r3, 0xc
/* 80093294  48 00 45 45 */	bl __as__4cXyzFRC4cXyz
/* 80093298  80 1C 03 F0 */	lwz r0, 0x3f0(r28)
/* 8009329C  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 800932A0  7C 7B 00 2E */	lwzx r3, r27, r0
/* 800932A4  38 63 00 0C */	addi r3, r3, 0xc
/* 800932A8  38 81 02 C4 */	addi r4, r1, 0x2c4
/* 800932AC  48 00 45 2D */	bl __as__4cXyzFRC4cXyz
lbl_800932B0:
/* 800932B0  38 61 00 E4 */	addi r3, r1, 0xe4
/* 800932B4  7F 84 E3 78 */	mr r4, r28
/* 800932B8  80 BC 01 80 */	lwz r5, 0x180(r28)
/* 800932BC  80 1C 03 F0 */	lwz r0, 0x3f0(r28)
/* 800932C0  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 800932C4  38 C1 05 40 */	addi r6, r1, 0x540
/* 800932C8  7C C6 00 2E */	lwzx r6, r6, r0
/* 800932CC  48 0D 1A A1 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 800932D0  38 7C 03 F4 */	addi r3, r28, 0x3f4
/* 800932D4  38 81 00 E4 */	addi r4, r1, 0xe4
/* 800932D8  48 00 45 01 */	bl __as__4cXyzFRC4cXyz
/* 800932DC  80 1C 03 F0 */	lwz r0, 0x3f0(r28)
/* 800932E0  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 800932E4  38 61 05 4C */	addi r3, r1, 0x54c
/* 800932E8  7C 03 04 2E */	lfsx f0, r3, r0
/* 800932EC  D0 1C 04 00 */	stfs f0, 0x400(r28)
/* 800932F0  80 1C 03 F0 */	lwz r0, 0x3f0(r28)
/* 800932F4  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 800932F8  38 61 05 50 */	addi r3, r1, 0x550
/* 800932FC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80093300  90 1C 03 EC */	stw r0, 0x3ec(r28)
/* 80093304  7F 83 E3 78 */	mr r3, r28
/* 80093308  38 81 02 DC */	addi r4, r1, 0x2dc
/* 8009330C  38 BC 03 F4 */	addi r5, r28, 0x3f4
/* 80093310  38 C1 02 D0 */	addi r6, r1, 0x2d0
/* 80093314  38 E0 40 B7 */	li r7, 0x40b7
/* 80093318  48 0D 26 DD */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP4cXyzUl
/* 8009331C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80093320  41 82 00 2C */	beq lbl_8009334C
/* 80093324  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80093328  38 9C 00 5C */	addi r4, r28, 0x5c
/* 8009332C  48 1D E8 05 */	bl Norm__7cSGlobeCFv
/* 80093330  38 61 00 CC */	addi r3, r1, 0xcc
/* 80093334  38 81 02 D0 */	addi r4, r1, 0x2d0
/* 80093338  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 8009333C  48 1D 37 A9 */	bl __pl__4cXyzCFRC3Vec
/* 80093340  38 7C 03 F4 */	addi r3, r28, 0x3f4
/* 80093344  38 81 00 CC */	addi r4, r1, 0xcc
/* 80093348  48 00 44 91 */	bl __as__4cXyzFRC4cXyz
lbl_8009334C:
/* 8009334C  3B C0 00 00 */	li r30, 0
/* 80093350  3B 60 00 00 */	li r27, 0
/* 80093354  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80093358  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009335C  48 00 01 64 */	b lbl_800934C0
lbl_80093360:
/* 80093360  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80093364  7F 84 E3 78 */	mr r4, r28
/* 80093368  80 BC 01 80 */	lwz r5, 0x180(r28)
/* 8009336C  80 06 00 04 */	lwz r0, 4(r6)
/* 80093370  7C C0 DA 14 */	add r6, r0, r27
/* 80093374  48 0D 19 F9 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80093378  38 61 02 E8 */	addi r3, r1, 0x2e8
/* 8009337C  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80093380  48 00 44 59 */	bl __as__4cXyzFRC4cXyz
/* 80093384  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80093388  7F 84 E3 78 */	mr r4, r28
/* 8009338C  80 BC 01 80 */	lwz r5, 0x180(r28)
/* 80093390  48 00 43 CD */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80093394  C0 41 02 EC */	lfs f2, 0x2ec(r1)
/* 80093398  C0 3C 03 D8 */	lfs f1, 0x3d8(r28)
/* 8009339C  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 800933A0  EC 01 00 2A */	fadds f0, f1, f0
/* 800933A4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800933A8  40 80 00 24 */	bge lbl_800933CC
/* 800933AC  38 61 00 A8 */	addi r3, r1, 0xa8
/* 800933B0  7F 84 E3 78 */	mr r4, r28
/* 800933B4  80 BC 01 80 */	lwz r5, 0x180(r28)
/* 800933B8  48 00 43 A5 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 800933BC  C0 3C 03 D8 */	lfs f1, 0x3d8(r28)
/* 800933C0  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 800933C4  EC 01 00 2A */	fadds f0, f1, f0
/* 800933C8  D0 01 02 EC */	stfs f0, 0x2ec(r1)
lbl_800933CC:
/* 800933CC  3B 40 00 00 */	li r26, 0
/* 800933D0  80 1C 03 F0 */	lwz r0, 0x3f0(r28)
/* 800933D4  2C 00 00 0A */	cmpwi r0, 0xa
/* 800933D8  41 82 00 14 */	beq lbl_800933EC
/* 800933DC  40 80 00 6C */	bge lbl_80093448
/* 800933E0  2C 00 00 01 */	cmpwi r0, 1
/* 800933E4  41 82 00 08 */	beq lbl_800933EC
/* 800933E8  48 00 00 60 */	b lbl_80093448
lbl_800933EC:
/* 800933EC  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 800933F0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800933F4  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800933F8  7D 89 03 A6 */	mtctr r12
/* 800933FC  4E 80 04 21 */	bctrl 
/* 80093400  28 03 00 00 */	cmplwi r3, 0
/* 80093404  41 82 00 0C */	beq lbl_80093410
/* 80093408  83 5F 5D B8 */	lwz r26, 0x5db8(r31)
/* 8009340C  48 00 00 3C */	b lbl_80093448
lbl_80093410:
/* 80093410  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80093414  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80093418  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8009341C  7D 89 03 A6 */	mtctr r12
/* 80093420  4E 80 04 21 */	bctrl 
/* 80093424  28 03 00 00 */	cmplwi r3, 0
/* 80093428  41 82 00 20 */	beq lbl_80093448
/* 8009342C  38 00 00 ED */	li r0, 0xed
/* 80093430  B0 01 00 08 */	sth r0, 8(r1)
/* 80093434  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80093438  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 8009343C  38 81 00 08 */	addi r4, r1, 8
/* 80093440  4B F8 63 B9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80093444  7C 7A 1B 78 */	mr r26, r3
lbl_80093448:
/* 80093448  7F 83 E3 78 */	mr r3, r28
/* 8009344C  38 9C 03 F4 */	addi r4, r28, 0x3f4
/* 80093450  38 A1 02 E8 */	addi r5, r1, 0x2e8
/* 80093454  38 C0 40 07 */	li r6, 0x4007
/* 80093458  48 0D 26 99 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 8009345C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80093460  40 82 00 58 */	bne lbl_800934B8
/* 80093464  7F 83 E3 78 */	mr r3, r28
/* 80093468  38 81 02 DC */	addi r4, r1, 0x2dc
/* 8009346C  38 A1 02 E8 */	addi r5, r1, 0x2e8
/* 80093470  38 C0 40 07 */	li r6, 0x4007
/* 80093474  48 0D 26 7D */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80093478  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8009347C  40 82 00 3C */	bne lbl_800934B8
/* 80093480  38 61 00 9C */	addi r3, r1, 0x9c
/* 80093484  38 9C 03 F4 */	addi r4, r28, 0x3f4
/* 80093488  48 00 43 6D */	bl __ct__4cXyzFRC4cXyz
/* 8009348C  38 61 00 90 */	addi r3, r1, 0x90
/* 80093490  38 81 02 E8 */	addi r4, r1, 0x2e8
/* 80093494  48 00 43 61 */	bl __ct__4cXyzFRC4cXyz
/* 80093498  38 61 00 9C */	addi r3, r1, 0x9c
/* 8009349C  38 81 00 90 */	addi r4, r1, 0x90
/* 800934A0  80 BC 01 80 */	lwz r5, 0x180(r28)
/* 800934A4  7F 46 D3 78 */	mr r6, r26
/* 800934A8  38 E0 00 00 */	li r7, 0
/* 800934AC  4B FF C5 E9 */	bl func_8008FA94
/* 800934B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800934B4  41 82 00 28 */	beq lbl_800934DC
lbl_800934B8:
/* 800934B8  3B DE 00 01 */	addi r30, r30, 1
/* 800934BC  3B 7B 00 0C */	addi r27, r27, 0xc
lbl_800934C0:
/* 800934C0  80 1C 03 F0 */	lwz r0, 0x3f0(r28)
/* 800934C4  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 800934C8  38 C1 05 40 */	addi r6, r1, 0x540
/* 800934CC  7C C6 02 14 */	add r6, r6, r0
/* 800934D0  80 06 00 08 */	lwz r0, 8(r6)
/* 800934D4  7C 1E 00 00 */	cmpw r30, r0
/* 800934D8  41 80 FE 88 */	blt lbl_80093360
lbl_800934DC:
/* 800934DC  80 1C 03 F0 */	lwz r0, 0x3f0(r28)
/* 800934E0  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 800934E4  38 61 05 48 */	addi r3, r1, 0x548
/* 800934E8  7C 03 00 2E */	lwzx r0, r3, r0
/* 800934EC  7C 1E 00 00 */	cmpw r30, r0
/* 800934F0  41 80 00 24 */	blt lbl_80093514
/* 800934F4  38 7C 03 F4 */	addi r3, r28, 0x3f4
/* 800934F8  38 9C 04 2C */	addi r4, r28, 0x42c
/* 800934FC  48 00 42 DD */	bl __as__4cXyzFRC4cXyz
/* 80093500  C0 1C 04 44 */	lfs f0, 0x444(r28)
/* 80093504  D0 1C 04 00 */	stfs f0, 0x400(r28)
/* 80093508  38 61 02 E8 */	addi r3, r1, 0x2e8
/* 8009350C  38 9C 04 38 */	addi r4, r28, 0x438
/* 80093510  48 00 42 C9 */	bl __as__4cXyzFRC4cXyz
lbl_80093514:
/* 80093514  38 61 00 84 */	addi r3, r1, 0x84
/* 80093518  38 81 02 E8 */	addi r4, r1, 0x2e8
/* 8009351C  38 BC 03 F4 */	addi r5, r28, 0x3f4
/* 80093520  48 1D 36 15 */	bl __mi__4cXyzCFRC3Vec
/* 80093524  38 7C 04 0C */	addi r3, r28, 0x40c
/* 80093528  38 81 00 84 */	addi r4, r1, 0x84
/* 8009352C  48 1D E5 45 */	bl Val__7cSGlobeFRC4cXyz
/* 80093530  38 00 00 01 */	li r0, 1
/* 80093534  90 1C 03 E8 */	stw r0, 0x3e8(r28)
/* 80093538  48 00 02 3C */	b lbl_80093774
lbl_8009353C:
/* 8009353C  80 1C 04 08 */	lwz r0, 0x408(r28)
/* 80093540  C8 42 8E F8 */	lfd f2, lit_5962(r2)
/* 80093544  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80093548  90 01 06 B4 */	stw r0, 0x6b4(r1)
/* 8009354C  3C 60 43 30 */	lis r3, 0x4330
/* 80093550  90 61 06 B0 */	stw r3, 0x6b0(r1)
/* 80093554  C8 01 06 B0 */	lfd f0, 0x6b0(r1)
/* 80093558  EC 20 10 28 */	fsubs f1, f0, f2
/* 8009355C  80 1C 03 EC */	lwz r0, 0x3ec(r28)
/* 80093560  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80093564  90 01 06 BC */	stw r0, 0x6bc(r1)
/* 80093568  90 61 06 B8 */	stw r3, 0x6b8(r1)
/* 8009356C  C8 01 06 B8 */	lfd f0, 0x6b8(r1)
/* 80093570  EC 00 10 28 */	fsubs f0, f0, f2
/* 80093574  EF E1 00 24 */	fdivs f31, f1, f0
/* 80093578  C0 3C 00 80 */	lfs f1, 0x80(r28)
/* 8009357C  C0 1C 04 00 */	lfs f0, 0x400(r28)
/* 80093580  EC 00 08 28 */	fsubs f0, f0, f1
/* 80093584  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80093588  EC 01 00 2A */	fadds f0, f1, f0
/* 8009358C  D0 1C 00 80 */	stfs f0, 0x80(r28)
/* 80093590  38 61 00 78 */	addi r3, r1, 0x78
/* 80093594  38 9C 03 F4 */	addi r4, r28, 0x3f4
/* 80093598  38 BC 00 64 */	addi r5, r28, 0x64
/* 8009359C  48 1D 35 99 */	bl __mi__4cXyzCFRC3Vec
/* 800935A0  38 61 00 6C */	addi r3, r1, 0x6c
/* 800935A4  38 81 00 78 */	addi r4, r1, 0x78
/* 800935A8  FC 20 F8 90 */	fmr f1, f31
/* 800935AC  48 1D 35 D9 */	bl __ml__4cXyzCFf
/* 800935B0  38 7C 00 64 */	addi r3, r28, 0x64
/* 800935B4  38 81 00 6C */	addi r4, r1, 0x6c
/* 800935B8  7C 65 1B 78 */	mr r5, r3
/* 800935BC  48 2B 3A D5 */	bl PSVECAdd
/* 800935C0  C0 3C 00 5C */	lfs f1, 0x5c(r28)
/* 800935C4  A8 1C 00 60 */	lha r0, 0x60(r28)
/* 800935C8  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 800935CC  A8 1C 00 62 */	lha r0, 0x62(r28)
/* 800935D0  B0 01 00 20 */	sth r0, 0x20(r1)
/* 800935D4  C0 1C 04 0C */	lfs f0, 0x40c(r28)
/* 800935D8  EC 00 08 28 */	fsubs f0, f0, f1
/* 800935DC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 800935E0  EF C1 00 2A */	fadds f30, f1, f0
/* 800935E4  38 61 00 18 */	addi r3, r1, 0x18
/* 800935E8  38 9C 04 10 */	addi r4, r28, 0x410
/* 800935EC  38 A1 00 1C */	addi r5, r1, 0x1c
/* 800935F0  48 1D DB B5 */	bl __mi__7cSAngleCFRC7cSAngle
/* 800935F4  38 61 00 14 */	addi r3, r1, 0x14
/* 800935F8  38 81 00 18 */	addi r4, r1, 0x18
/* 800935FC  FC 20 F8 90 */	fmr f1, f31
/* 80093600  48 1D DC 65 */	bl __ml__7cSAngleCFf
/* 80093604  38 61 00 1C */	addi r3, r1, 0x1c
/* 80093608  38 81 00 14 */	addi r4, r1, 0x14
/* 8009360C  48 1D DB C9 */	bl __apl__7cSAngleFRC7cSAngle
/* 80093610  38 61 00 10 */	addi r3, r1, 0x10
/* 80093614  38 9C 04 12 */	addi r4, r28, 0x412
/* 80093618  38 A1 00 20 */	addi r5, r1, 0x20
/* 8009361C  48 1D DB 89 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80093620  38 61 00 0C */	addi r3, r1, 0xc
/* 80093624  38 81 00 10 */	addi r4, r1, 0x10
/* 80093628  FC 20 F8 90 */	fmr f1, f31
/* 8009362C  48 1D DC 39 */	bl __ml__7cSAngleCFf
/* 80093630  38 61 00 20 */	addi r3, r1, 0x20
/* 80093634  38 81 00 0C */	addi r4, r1, 0xc
/* 80093638  48 1D DB 9D */	bl __apl__7cSAngleFRC7cSAngle
/* 8009363C  38 7C 00 5C */	addi r3, r28, 0x5c
/* 80093640  FC 20 F0 90 */	fmr f1, f30
/* 80093644  38 81 00 1C */	addi r4, r1, 0x1c
/* 80093648  38 A1 00 20 */	addi r5, r1, 0x20
/* 8009364C  48 1D E3 BD */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 80093650  38 61 00 60 */	addi r3, r1, 0x60
/* 80093654  38 9C 00 5C */	addi r4, r28, 0x5c
/* 80093658  48 1D E4 5D */	bl Xyz__7cSGlobeCFv
/* 8009365C  38 61 00 54 */	addi r3, r1, 0x54
/* 80093660  38 9C 00 64 */	addi r4, r28, 0x64
/* 80093664  38 A1 00 60 */	addi r5, r1, 0x60
/* 80093668  48 1D 34 7D */	bl __pl__4cXyzCFRC3Vec
/* 8009366C  38 7C 00 70 */	addi r3, r28, 0x70
/* 80093670  38 81 00 54 */	addi r4, r1, 0x54
/* 80093674  48 00 41 65 */	bl __as__4cXyzFRC4cXyz
/* 80093678  80 7C 04 08 */	lwz r3, 0x408(r28)
/* 8009367C  80 1C 03 EC */	lwz r0, 0x3ec(r28)
/* 80093680  7C 03 00 00 */	cmpw r3, r0
/* 80093684  41 80 00 F0 */	blt lbl_80093774
/* 80093688  38 00 00 02 */	li r0, 2
/* 8009368C  90 1C 03 E8 */	stw r0, 0x3e8(r28)
lbl_80093690:
/* 80093690  38 7C 00 64 */	addi r3, r28, 0x64
/* 80093694  38 9C 03 F4 */	addi r4, r28, 0x3f4
/* 80093698  48 00 41 41 */	bl __as__4cXyzFRC4cXyz
/* 8009369C  38 61 00 48 */	addi r3, r1, 0x48
/* 800936A0  38 9C 00 5C */	addi r4, r28, 0x5c
/* 800936A4  48 1D E4 11 */	bl Xyz__7cSGlobeCFv
/* 800936A8  38 61 00 3C */	addi r3, r1, 0x3c
/* 800936AC  38 9C 00 64 */	addi r4, r28, 0x64
/* 800936B0  38 A1 00 48 */	addi r5, r1, 0x48
/* 800936B4  48 1D 34 31 */	bl __pl__4cXyzCFRC3Vec
/* 800936B8  38 7C 00 70 */	addi r3, r28, 0x70
/* 800936BC  38 81 00 3C */	addi r4, r1, 0x3c
/* 800936C0  48 00 41 19 */	bl __as__4cXyzFRC4cXyz
/* 800936C4  80 7C 04 04 */	lwz r3, 0x404(r28)
/* 800936C8  38 03 00 01 */	addi r0, r3, 1
/* 800936CC  90 1C 04 04 */	stw r0, 0x404(r28)
/* 800936D0  80 1C 04 04 */	lwz r0, 0x404(r28)
/* 800936D4  2C 00 00 01 */	cmpwi r0, 1
/* 800936D8  40 82 00 54 */	bne lbl_8009372C
/* 800936DC  80 1C 03 F0 */	lwz r0, 0x3f0(r28)
/* 800936E0  2C 00 00 00 */	cmpwi r0, 0
/* 800936E4  40 82 00 18 */	bne lbl_800936FC
/* 800936E8  38 00 00 0B */	li r0, 0xb
/* 800936EC  90 1C 03 E8 */	stw r0, 0x3e8(r28)
/* 800936F0  38 00 00 04 */	li r0, 4
/* 800936F4  90 1C 03 F0 */	stw r0, 0x3f0(r28)
/* 800936F8  48 00 00 7C */	b lbl_80093774
lbl_800936FC:
/* 800936FC  2C 00 00 07 */	cmpwi r0, 7
/* 80093700  40 82 00 18 */	bne lbl_80093718
/* 80093704  38 00 00 0B */	li r0, 0xb
/* 80093708  90 1C 03 E8 */	stw r0, 0x3e8(r28)
/* 8009370C  38 00 00 08 */	li r0, 8
/* 80093710  90 1C 03 F0 */	stw r0, 0x3f0(r28)
/* 80093714  48 00 00 60 */	b lbl_80093774
lbl_80093718:
/* 80093718  2C 00 00 0B */	cmpwi r0, 0xb
/* 8009371C  40 82 00 10 */	bne lbl_8009372C
/* 80093720  38 00 03 E7 */	li r0, 0x3e7
/* 80093724  90 1C 03 E8 */	stw r0, 0x3e8(r28)
/* 80093728  48 00 00 4C */	b lbl_80093774
lbl_8009372C:
/* 8009372C  38 00 00 63 */	li r0, 0x63
/* 80093730  90 1C 03 E8 */	stw r0, 0x3e8(r28)
lbl_80093734:
/* 80093734  38 00 00 01 */	li r0, 1
/* 80093738  98 1C 01 58 */	stb r0, 0x158(r28)
/* 8009373C  38 7C 00 64 */	addi r3, r28, 0x64
/* 80093740  38 9C 03 F4 */	addi r4, r28, 0x3f4
/* 80093744  48 00 40 95 */	bl __as__4cXyzFRC4cXyz
/* 80093748  38 61 00 30 */	addi r3, r1, 0x30
/* 8009374C  38 9C 00 5C */	addi r4, r28, 0x5c
/* 80093750  48 1D E3 65 */	bl Xyz__7cSGlobeCFv
/* 80093754  38 61 00 24 */	addi r3, r1, 0x24
/* 80093758  38 9C 00 64 */	addi r4, r28, 0x64
/* 8009375C  38 A1 00 30 */	addi r5, r1, 0x30
/* 80093760  48 1D 33 85 */	bl __pl__4cXyzCFRC3Vec
/* 80093764  38 7C 00 70 */	addi r3, r28, 0x70
/* 80093768  38 81 00 24 */	addi r4, r1, 0x24
/* 8009376C  48 00 40 6D */	bl __as__4cXyzFRC4cXyz
lbl_80093770:
/* 80093770  3B A0 00 01 */	li r29, 1
lbl_80093774:
/* 80093774  80 7C 04 08 */	lwz r3, 0x408(r28)
/* 80093778  38 03 00 01 */	addi r0, r3, 1
/* 8009377C  90 1C 04 08 */	stw r0, 0x408(r28)
/* 80093780  7F A3 EB 78 */	mr r3, r29
/* 80093784  E3 E1 06 F8 */	psq_l f31, 1784(r1), 0, 0 /* qr0 */
/* 80093788  CB E1 06 F0 */	lfd f31, 0x6f0(r1)
/* 8009378C  E3 C1 06 E8 */	psq_l f30, 1768(r1), 0, 0 /* qr0 */
/* 80093790  CB C1 06 E0 */	lfd f30, 0x6e0(r1)
/* 80093794  39 61 06 E0 */	addi r11, r1, 0x6e0
/* 80093798  48 2C EA 85 */	bl _restgpr_26
/* 8009379C  80 01 07 04 */	lwz r0, 0x704(r1)
/* 800937A0  7C 08 03 A6 */	mtlr r0
/* 800937A4  38 21 07 00 */	addi r1, r1, 0x700
/* 800937A8  4E 80 00 20 */	blr 
