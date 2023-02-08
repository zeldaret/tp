lbl_8032C704:
/* 8032C704  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8032C708  C0 03 00 00 */	lfs f0, 0(r3)
/* 8032C70C  C0 64 00 00 */	lfs f3, 0(r4)
/* 8032C710  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8032C714  EC 82 00 2A */	fadds f4, f2, f0
/* 8032C718  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 8032C71C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8032C720  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8032C724  EC A2 00 2A */	fadds f5, f2, f0
/* 8032C728  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 8032C72C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8032C730  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8032C734  EC 62 00 2A */	fadds f3, f2, f0
/* 8032C738  C0 03 00 04 */	lfs f0, 4(r3)
/* 8032C73C  C0 44 00 04 */	lfs f2, 4(r4)
/* 8032C740  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8032C744  EC 84 00 2A */	fadds f4, f4, f0
/* 8032C748  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8032C74C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8032C750  EC A5 00 2A */	fadds f5, f5, f0
/* 8032C754  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8032C758  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8032C75C  EC 63 00 2A */	fadds f3, f3, f0
/* 8032C760  C0 03 00 08 */	lfs f0, 8(r3)
/* 8032C764  C0 44 00 08 */	lfs f2, 8(r4)
/* 8032C768  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8032C76C  EC 84 00 2A */	fadds f4, f4, f0
/* 8032C770  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8032C774  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8032C778  EC A5 00 2A */	fadds f5, f5, f0
/* 8032C77C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8032C780  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8032C784  EC 63 00 2A */	fadds f3, f3, f0
/* 8032C788  C0 45 00 00 */	lfs f2, 0(r5)
/* 8032C78C  EC 04 00 72 */	fmuls f0, f4, f1
/* 8032C790  EC 02 00 2A */	fadds f0, f2, f0
/* 8032C794  D0 05 00 00 */	stfs f0, 0(r5)
/* 8032C798  C0 45 00 04 */	lfs f2, 4(r5)
/* 8032C79C  EC 05 00 72 */	fmuls f0, f5, f1
/* 8032C7A0  EC 02 00 2A */	fadds f0, f2, f0
/* 8032C7A4  D0 05 00 04 */	stfs f0, 4(r5)
/* 8032C7A8  C0 45 00 08 */	lfs f2, 8(r5)
/* 8032C7AC  EC 03 00 72 */	fmuls f0, f3, f1
/* 8032C7B0  EC 02 00 2A */	fadds f0, f2, f0
/* 8032C7B4  D0 05 00 08 */	stfs f0, 8(r5)
/* 8032C7B8  4E 80 00 20 */	blr 
