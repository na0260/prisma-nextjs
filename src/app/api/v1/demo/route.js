import {NextResponse} from "next/server";
import {PrismaClient} from "@prisma/client";

export async function GET(req, res) {
    const prisma = new PrismaClient();
    // Insert one
    /*await prisma.brands.create(
        {
            data: {
                brandName: "Brand 1",
                BrandImg: "Something.png"
            }
        }
    );

    return NextResponse.json({status: "Success"});*/
    // Insert many
    /*await prisma.brands.createMany({
        data: [
            {
                brandName: "Brand 1",
                BrandImg: "Something1.png"
            },
            {
                brandName: "Brand 2",
                BrandImg: "Something2.png"
            },
            {
                brandName: "Brand 3",
                BrandImg: "Something3.png"
            }
        ]
    });

    return NextResponse.json({status: "Many Success"});*/

    // Update one
    /*await prisma.brands.update({
        data: {
            brandName: "Brand 1 Updated",
            BrandImg: "SomethingUpdated.png"
        },
        where: {
            id: 1
        }
    });

    return NextResponse.json({status: "Updated Success"});*/

    // Relational Insert
    // Delete one
    // Find one
}